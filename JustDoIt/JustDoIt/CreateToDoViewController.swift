//
//  CreateToDoViewController.swift
//  JustDoIt
//
//  Created by woli on 03.09.2018.
//  Copyright © 2018 woli. All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController {
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var taskImportanceSwitch: UISwitch!
    
    var previousViewController = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        
        let task = DoItTask()
        task.name = taskNameTextField.text!
        task.importance = taskImportanceSwitch.isOn
        
        // Add new task to array in previous viewController
        previousViewController.tasks.append(task)
        previousViewController.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
