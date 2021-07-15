//
//  ViewController.swift
//  ChatAPP
//
//  Created by 賴柏穎 on 2021/7/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let meTableViewCellXib = UINib(nibName: "\(MeTableViewCell.self)", bundle: nil)
        tableView.register(meTableViewCellXib, forCellReuseIdentifier: "\(MeTableViewCell.self)")
        let otherPeopleTableCellXib = UINib(nibName: "\(OtherPeopleTableViewCell.self)", bundle: nil)
        tableView.register(otherPeopleTableCellXib, forCellReuseIdentifier: "\(OtherPeopleTableViewCell.self)")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellInfos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatContent = cellInfos[indexPath.row]
        if chatContent.talkPeople == .otherPeople {
            if chatContent.gender == .boy {
                let cell = tableView.dequeueReusableCell(withIdentifier: "\(OtherPeopleTableViewCell.self)", for: indexPath) as! OtherPeopleTableViewCell
                cell.otherPeopleImageView.image = UIImage(named: chatContent.image.rawValue)
                cell.otherPeopleImageView.layer.cornerRadius = 20
                cell.otherPeopleNameLabel.text = chatContent.name.rawValue
                cell.otherPeopleContainerView.backgroundColor = UIColor(red: 214/255, green: 244/255, blue: 255/255, alpha: 1)
                cell.otherPeopleTextView.text = chatContent.chatContent
                
                return cell
                
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "\(OtherPeopleTableViewCell.self)", for: indexPath) as! OtherPeopleTableViewCell
                cell.otherPeopleImageView.image = UIImage(named: chatContent.image.rawValue)
                cell.otherPeopleImageView.layer.cornerRadius = 20
                cell.otherPeopleNameLabel.text = chatContent.name.rawValue
                cell.otherPeopleContainerView.backgroundColor = UIColor(red: 255/255, green: 226/255, blue: 230/255, alpha: 1)
                cell.otherPeopleTextView.text = chatContent.chatContent
                
                return cell
                
            }
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(MeTableViewCell.self)", for: indexPath) as! MeTableViewCell
            cell.meImageView.image = UIImage(named: chatContent.image.rawValue)
            cell.meImageView.layer.cornerRadius = 20
            cell.meNameLabel.text = chatContent.name.rawValue
            cell.meContainerView.backgroundColor = UIColor(red: 214/255, green: 244/255, blue: 255/255, alpha: 1)
            cell.meTextView.text = chatContent.chatContent
            
            return cell
            
        }
    }
    
    
    
}

