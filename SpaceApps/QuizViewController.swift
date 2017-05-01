//
//  QuizViewController.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 30/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, iCarouselDelegate, iCarouselDataSource {

	@IBOutlet weak var factsC: iCarousel!
	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var dd: UIButton!
	@IBOutlet weak var cc: UIButton!
	@IBOutlet weak var bb: UIButton!
	@IBOutlet weak var aa: UIButton!
	
	var count = 0
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		factsC.delegate = self
		factsC.dataSource = self
		factsC.type = .linear
		factsC.reloadData()
    }
	@IBAction func a(_ sender: UIButton) {
		if count == 3 {
			return
		}
		if quiz[count][5] == "a" {
			correctFlash(x: "a")
		} else {
			correctFlash(x: quiz[count][5])
			incorrectFlash(x: "a")
		}
		count+=1
		
		nextQuestion()
	}
	@IBAction func b(_ sender: Any) {
		if count == 3 {
			return
		}
		if quiz[count][5] == "b" {
			correctFlash(x: "b")
		} else {
			correctFlash(x: quiz[count][5])
			incorrectFlash(x: "b")
		}
		count+=1
		
		nextQuestion()
	}
	@IBAction func c(_ sender: Any) {
		if count == 3 {
			return
		}
		if quiz[count][5] == "c" {
			correctFlash(x: "c")
		} else {
			correctFlash(x: quiz[count][5])
			incorrectFlash(x: "c")
		}
		count+=1
		
		nextQuestion()
	}
	@IBAction func d(_ sender: Any) {
		if count == 3 {
			return
		}
		if quiz[count][5] == "d" {
			correctFlash(x: "d")
		} else {
			correctFlash(x: quiz[count][5])
			incorrectFlash(x: "d")
		}
		count+=1
		
		nextQuestion()
	}
	
	func correctFlash(x : String) {
		
		var btn = UIButton()
		if x == "a" {
			btn = aa
		} else if x == "b" {
			btn = bb
		} else if x == "c" {
			btn = cc
		} else {
			btn = dd
		}
		
		UIView.animate(withDuration: 0.5, animations: { void in
		
			btn.backgroundColor = UIColor.green
		
		}, completion: { void in
		
			btn.backgroundColor = UIColor.clear
		
		})
	}
	
	func incorrectFlash(x : String) {
		
		var btn = UIButton()
		if x == "a" {
			btn = aa
		} else if x == "b" {
			btn = bb
		} else if x == "c" {
			btn = cc
		} else {
			btn = dd
		}
		
		UIView.animate(withDuration: 0.5, animations: { void in
			
			btn.backgroundColor = UIColor.red
			
		}, completion: { void in
			
			btn.backgroundColor = UIColor.clear
			
		})
	}
	
	func nextQuestion() {
		if count == 3 {
			return
		}
		questionLabel.text = quiz[count][0]
		aa.setTitle(quiz[count][1]+" ?", for: .normal)
		aa.setTitle(quiz[count][1]+" ?", for: .selected)
		bb.setTitle(quiz[count][2]+" ?", for: .normal)
		bb.setTitle(quiz[count][2]+" ?", for: .selected)
		cc.setTitle(quiz[count][3]+" ?", for: .normal)
		cc.setTitle(quiz[count][3]+" ?", for: .selected)
		dd.setTitle(quiz[count][4]+" ?", for: .normal)
		dd.setTitle(quiz[count][4]+" ?", for: .selected)
	}
	@IBOutlet weak var tc: NSLayoutConstraint!
	
	@IBAction func showQuiz(_ sender: Any) {
		
		self.factsC.removeFromSuperview()
		
//		tc.constant = UIScreen.main.bounds.height
//		UIView.animate(withDuration: 0.3, animations: { void in
//		
//			self.view.layoutIfNeeded()
//			
//		})
	}

	func numberOfItems(in carousel: iCarousel) -> Int {
		return fact.count
	}
	
	func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
		var itemView: UITextView
		if (view == nil) {
			itemView = UITextView(frame: CGRect(x: 0, y: 0, width: factsC.bounds.width-30, height: 200))
			itemView.isEditable = false
			itemView.isSelectable = false
			itemView.isScrollEnabled = false
			itemView.textAlignment = .center
			itemView.backgroundColor = UIColor.clear
			itemView.font = UIFont(name: "Amatic-Bold", size: 40)
			itemView.textColor = UIColor.black
		}
		else {
			itemView = view as! UITextView;
		}
		itemView.text = fact[index]
		return itemView
	}
	
}
