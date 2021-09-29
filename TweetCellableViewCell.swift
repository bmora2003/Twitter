//
//  TweetCellableViewCell.swift
//  Twitter
//
//  Created by Bryan Mora  on 9/28/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class TweetCellableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    
    
    
    
        
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}