//
//  ViewController.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 29/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		tableView.delegate = self
		tableView.dataSource = self
		
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 2
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if section == 0 {
			return 2
		} else  {
			return 10
		}
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		if section == 0 {
			return "0"
		} else {
			return "1"
		}
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 72
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "chat_cell", for: indexPath) as! ChatWaliCell
		cell.lastMsgLabel.text = "I'm Bruce Wayne!"
		cell.nameLabel.text = "Batman"
		cell.profileImage.backgroundColor = UIColor.darkGray
		cell.profileImage.layer.cornerRadius = 24.75
		cell.profileImage.clipsToBounds = true
		return cell
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

