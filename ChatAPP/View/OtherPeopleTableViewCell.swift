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
            
            // 對話框路徑
            let chatBubblePath = UIBezierPath()
            chatBubblePath.move(to: CGPoint(x: 20, y: 0))
            print("1. \(CGPoint(x: 20, y: 0))")
            
            chatBubblePath.addLine(to: CGPoint(x: otherPeopleContainerView.frame.width - 5, y: 0))
            print("2. \(CGPoint(x: otherPeopleContainerView.frame.width - 5, y: 0))")
            
            chatBubblePath.addQuadCurve(to: CGPoint(x: otherPeopleContainerView.frame.width, y: 5), controlPoint: CGPoint(x: otherPeopleContainerView.frame.width, y: 0))
            print("3. \(CGPoint(x: otherPeopleContainerView.frame.width, y: 5))")
            print("4. \(CGPoint(x: otherPeopleContainerView.frame.width, y: 0))")
            
            chatBubblePath.addLine(to: CGPoint(x: otherPeopleContainerView.frame.width, y: otherPeopleTextView.frame.height + 5))
            print("5. \(CGPoint(x: otherPeopleContainerView.frame.width, y: otherPeopleTextView.frame.height + 5))")
            
            chatBubblePath.addQuadCurve(to: CGPoint(x: otherPeopleContainerView.frame.width - 5, y: otherPeopleTextView.frame.height + 10), controlPoint: CGPoint(x: otherPeopleContainerView.frame.width, y: otherPeopleTextView.frame.height + 10))
            print("6. \(CGPoint(x: otherPeopleContainerView.frame.width - 15, y: otherPeopleTextView.frame.height + 10))")
            print("7. \(CGPoint(x: otherPeopleContainerView.frame.width, y: otherPeopleTextView.frame.height + 10))")
            
            chatBubblePath.addLine(to: CGPoint(x: 20, y: otherPeopleTextView.frame.height + 10))
            print("8. \(CGPoint(x: 20, y: otherPeopleTextView.frame.height + 10))")
            
            chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: otherPeopleTextView.frame.height + 5), controlPoint: CGPoint(x: 15, y: otherPeopleTextView.frame.height + 10))
            print("9. \(CGPoint(x: 15, y: otherPeopleTextView.frame.height + 5))")
            print("10. \(CGPoint(x: 15, y: otherPeopleTextView.frame.height + 10))")
            
            chatBubblePath.addLine(to: CGPoint(x: 15, y: 10))
            print("11. \(CGPoint(x: 15, y: 10))")
            
            chatBubblePath.addQuadCurve(to: CGPoint(x: 0, y: 0), controlPoint: CGPoint(x: 5, y: 8))
            print("12. \(CGPoint(x: 0, y: 0))")
            print("13. \(CGPoint(x: 5, y: 8))")
            
            chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: 5), controlPoint: CGPoint(x: 5, y: 4))
            print("14. \(CGPoint(x: 15, y: 5))")
            print("15. \(CGPoint(x: 5, y: 4))")
            
            chatBubblePath.addQuadCurve(to: CGPoint(x: 20, y: 0), controlPoint: CGPoint(x: 15, y: 0))
            print("16. \(CGPoint(x: 20, y: 0))")
            print("17. \(CGPoint(x: 15, y: 0))")
            
            chatBubblePath.close()
            
            let chatBubbleLayer = CAShapeLayer()
            chatBubbleLayer.path = chatBubblePath.cgPath
            otherPeopleContainerView.layer.mask = chatBubbleLayer
            
        }
    
    
    
}
