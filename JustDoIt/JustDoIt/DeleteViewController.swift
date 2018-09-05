//
//  DeleteViewController.swift
//  JustDoIt
//
//  Created by woli on 05.09.2018.
//  Copyright © 2018 woli. All rights reserved.
//

import UIKit

class DeleteViewController: BaseReturnViewController {

    var doItTask : DoItTask? = nil
    
    @IBOutlet weak var taskNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        taskNameLabel.text = doItTask?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // predicate function for items
    func taskPredicate(task: DoItTask) -> Bool {
        return task.name == doItTask!.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        //if let index = previousViewController.tasks.index(where: taskPredicate)
        if let index = previousViewController.tasks.index(where: { $0.name == doItTask?.name }) {
            previousViewController.tasks.remove(at: index)
        }
        
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
