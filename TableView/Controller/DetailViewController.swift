//
//  DetailViewController.swift
//  TableView
//
//  Created by Артём on 08.10.2021.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let task = self.task{
            titleLabel.text = task.description
        }
        else{
            titleLabel.text = "Please select some task!"
        }
    }
 

}
