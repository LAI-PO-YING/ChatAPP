//
//  MeTableViewCell.swift
//  ChatAPP
//
//  Created by 賴柏穎 on 2021/7/15.
//

import UIKit

class MeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var meImageView: UIImageView!
    @IBOutlet weak var meNameLabel: UILabel!
    @IBOutlet weak var meContainerView: UIView!
    @IBOutlet weak var meTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    let myChatBubblePath = UIBezierPath()
    
    
    
}
