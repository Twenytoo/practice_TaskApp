//
//  ViewController.swift
//  TableView
//
//  Created by Артём on 06.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTableView: UITableView!
    private var tasks: [Task] = []{
        didSet{
            myTableView.reloadData()  
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        let nib = UINib(nibName: "XibTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "xibCellID")
        
        myTextField.delegate = self
    }
}

// MARK: - Confige Table -
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "xibCellID", for: indexPath) as! XibTableViewCell
        
        cell.configure(tasks[indexPath.row])
        
        return cell 
    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let task = Task(title: textField.text ?? "", description: "", isActive: true)
        self.tasks.append(task)
        
        textField.text = ""
        
        return true
    }
}
 
