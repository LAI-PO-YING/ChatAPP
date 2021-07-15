//
//  OtherPeopleTableViewCell.swift
//  ChatAPP
//
//  Created by 賴柏穎 on 2021/7/15.
//

import UIKit

class OtherPeopleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var otherPeopleImageView: UIImageView!
    @IBOutlet weak var otherPeopleNameLabel: UILabel!
    @IBOutlet weak var otherPeopleContainerView: UIView!
    @IBOutlet weak var otherPeopleTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func otherPeopleChatBubble() {
        let otherPeopleChatBubblePath = UIBezierPath()
        // 1
        otherPeopleChatBubblePath.move(to: CGPoint(x: otherPeopleContainerView.frame.minX + 30, y: otherPeopleContainerView.frame.minY))
        // 2
        otherPeopleChatBubblePath.addLine(to: CGPoint(x: otherPeopleContainerView.frame.minX + 30 + otherPeopleContainerView.frame.width - 30 - 15, y: otherPeopleContainerView.frame.minY))
        // 3
        otherPeopleChatBubblePath.addQuadCurve(to: CGPoint(x: otherPeopleContainerView.frame.minX + 30 + otherPeopleContainerView.frame.width - 30 - 15 + 15, y: otherPeopleContainerView.frame.minY + 15), controlPoint: CGPoint(x: otherPeopleContainerView.frame.minX + 30 + otherPeopleContainerView.frame.width - 30 - 15 + 15, y: otherPeopleContainerView.frame.minY))
        // 5
        otherPeopleChatBubblePath.addLine(to: CGPoint(x: otherPeopleContainerView.frame.minX + 30 + otherPeopleContainerView.frame.width - 30 - 15 + 15, y: otherPeopleContainerView.frame.minY + 15 + otherPeopleContainerView.frame.height - 30)
        
        

    }
    
    
}
