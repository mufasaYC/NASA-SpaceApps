//
//  ChatWaliCell.swift
//  SpaceApps
//
//  Created by Mustafa Yusuf on 29/04/17.
//  Copyright © 2017 Mustafa Yusuf. All rights reserved.
//

import UIKit

class ChatWaliCell: UITableViewCell {

	@IBOutlet weak var timeLabel: UILabel!
	@IBOutlet weak var lastMsgLabel: UILabel!
	@IBOutlet weak var profileImage: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
