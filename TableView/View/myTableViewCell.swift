//
//  myTableViewCell.swift
//  TableView
//
//  Created by Артём on 07.10.2021.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var myTitleLabel: UILabel!
    
    func configure (_ task: Task){
        myTitleLabel.text = task.title 
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
