//
//  FlightPathViewController.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 30/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class FlightPathViewController: UIViewController, iCarouselDataSource, iCarouselDelegate, UITableViewDelegate, UITableViewDataSource {
	
	@IBOutlet weak var segment: UISegmentedControl!
	@IBOutlet weak var cityC: iCarousel!
	@IBOutlet weak var tableView: UITableView!
	
	var code = ["BOM","ISK","IDR","BKI","JAI","DEL","SXR"]
	var name = ["Mumbai","Nashik","Indore","Kota","Jaipur","Delhi","Srinagar"]
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		tableView.delegate = self
		tableView.dataSource = self
		tableView.estimatedRowHeight = 100
		tableView.rowHeight = UITableViewAutomaticDimension
		tableView.reloadData()
		cityC.dataSource = self
		cityC.delegate = self
		cityC.scrollToItem(at: 3, animated: true)
		self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
		
    }
	
	override func viewWillAppear(_ animated: Bool) {
		 self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white, NSFontAttributeName : UIFont(name: "Avenir Next", size: 21)!]
		self.title = "Jaipur"
	}
	
	func numberOfItems(in carousel: iCarousel) -> Int {
		return 7
	}
	
	func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
		
		var itemView: UITextView
		if (view == nil) {
			itemView = UITextView(frame: CGRect(x: 0, y: 0, width: cityC.bounds.width/7, height: cityC.bounds.height))
			itemView.isEditable = false
			itemView.isSelectable = false
			itemView.isScrollEnabled = false
			itemView.textAlignment = .center
			itemView.backgroundColor = UIColor.clear
			itemView.font = UIFont(name: "Avenir Next", size: 17)
			itemView.textColor = UIColor.white
		}
		else {
			itemView = view as! UITextView;
		}
		itemView.text = code[index]
		return itemView
	}

	func carousel(_ carousel: iCarousel, didSelectItemAt index: Int) {
		print(index)
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return jaipur.count
	}
	@IBAction func seg(_ sender: Any) {
		tableView.reloadData()
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TimelineCell
		if segment.selectedSegmentIndex == 0 {
			cell.yearLabel.text = "\(indexPath.row+1)"
			cell.descLabel.text = jaipur_facts[indexPath.row]
			return cell
		}
		cell.yearLabel.text = jaipur_years[indexPath.row]
		cell.descLabel.text = jaipur[indexPath.row]
		return cell
	}
	
}
