//
//  XibTableViewCell.swift
//  TableView
//
//  Created by Артём on 07.10.2021.
//

import UIKit

class XibTableViewCell: UITableViewCell {

    @IBOutlet weak var xibTitleLabel: UILabel!
    @IBOutlet weak var xibDescriptionLabel: UILabel!
    @IBOutlet weak var activeSwitch: UISwitch!
    
    func configure (_ task: Task){
        xibTitleLabel.text = task.title
        xibDescriptionLabel.text = task.description
        activeSwitch.isOn = task.isActive
    }
    
    
    
    @IBAction func didChangeActivity(_ sender: UISwitch) {
    }
    
    
}
