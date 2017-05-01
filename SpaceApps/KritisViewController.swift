//
//  KritisViewController.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 29/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class KritisViewController: UIViewController {

	override func viewDidLoad() {
		//WHEN THE VIEW IS LOADED FOR THE FIRST TIME
		fetchData()
	}
	
	func fetchData() {
		//SHURU LOADER
		//GET YOUR DATA FROM INTERNET
		modify()
	}
	
	func modify() {
		//LOADER KI MAA KI AANKH
		//EDIT A LABEL
	}
	
	func refresh() {
		fetchData()
	}

}
