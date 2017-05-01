//
//  TimelineCell.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 30/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class TimelineCell: UITableViewCell {

	@IBOutlet weak var yearLabel: UILabel!
	@IBOutlet weak var circleView: UIView!
	@IBOutlet weak var descLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		circleView.layer.cornerRadius = 25
		circleView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
