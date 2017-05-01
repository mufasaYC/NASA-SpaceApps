//
//  OptionViewController.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 30/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

var quiz = [[String]]()
var fact = [String]()

class OptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
	@IBAction func forest(_ sender: Any) {
		quiz = forest_quiz
		fact = forest_facts
		performSegue(withIdentifier: "quiz", sender: self)
	}

	@IBAction func snow(_ sender: Any) {
		quiz = snow_quiz
		fact = snow_facts
		performSegue(withIdentifier: "quiz", sender: self)
	}
	@IBAction func marine(_ sender: Any) {
		quiz = marine_quiz
		fact = marine_facts
		performSegue(withIdentifier: "quiz", sender: self)
	}
}
