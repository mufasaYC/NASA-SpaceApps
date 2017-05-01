//
//  InfoViewController.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 30/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, iCarouselDelegate, iCarouselDataSource {

	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var factsC: iCarousel!
	@IBOutlet weak var planetsC: iCarousel!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		planetsC.delegate = self
		planetsC.dataSource = self
		factsC.delegate = self
		factsC.dataSource = self
		planetsC.type = .timeMachine
		planetsC.reloadData()
		factsC.type = .linear
		factsC.reloadData()
		factsC.bounces = false
		planetsC.bounces = false
		
		titleLabel.text = planets[0]
		
		self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
	
	func numberOfItems(in carousel: iCarousel) -> Int {
		if carousel == planetsC {
			return planets.count
		}
		return facts[planetsC.currentItemIndex].count
	}
	
	func carouselCurrentItemIndexDidChange(_ carousel: iCarousel) {
		if carousel == planetsC {
			titleLabel.text = planets[planetsC.currentItemIndex]
			factsC.reloadData()
		}
	}
	
	func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
		if carousel == planetsC {
			var itemView: UIImageView
			if (view == nil) {
				itemView = UIImageView(frame: CGRect(x: 0, y: 0, width: planetsC.bounds.width, height: planetsC.bounds.height))
				itemView.contentMode = .scaleAspectFit
			}
			else {
				itemView = view as! UIImageView
			}
			itemView.image = UIImage(named: planets[index])
			return itemView
		}
		var itemView: UITextView
		if (view == nil) {
			itemView = UITextView(frame: CGRect(x: 0, y: 0, width: factsC.bounds.width, height: factsC.bounds.height))
			itemView.isEditable = false
			itemView.isSelectable = false
			itemView.isScrollEnabled = false
			itemView.textAlignment = .center
			itemView.backgroundColor = UIColor.clear
			itemView.font = UIFont(name: "Amatic-Bold", size: 32)
			itemView.textColor = UIColor.white
		}
		else {
			itemView = view as! UITextView;
		}
		itemView.text = facts[planetsC.currentItemIndex][index]
		return itemView
	}
	
	@IBAction func leftPlanet(_ sender: Any) {
		if planetsC.currentItemIndex == 0 {
			return
		}
		planetsC.scrollToItem(at: planetsC.currentItemIndex-1, animated: true)
	}
	
	@IBAction func rightPlanet(_ sender: Any) {
		if planetsC.currentItemIndex == planets.count-1 {
			return
		}
		planetsC.scrollToItem(at: planetsC.currentItemIndex+1, animated: true)
	}
	
}
