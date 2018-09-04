//
//  ViewController.swift
//  JustDoIt
//
//  Created by woli on 31.08.2018.
//  Copyright © 2018 woli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [DoItTask] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        
        if task.importance {
            cell.textLabel?.text = "❗️\(task.name)"
        }
        else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTasks() -> [DoItTask] {
        let task1 = DoItTask()
        task1.name = "Walk the dog"
        task1.importance = false
        
        let task2 = DoItTask()
        task2.name = "Buy butter"
        task2.importance = true
        
        let task3 = DoItTask()
        task3.name = "Pay the rent"
        task3.importance = false
        
        return [task1, task2, task3]
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextViewController = segue.destination as! CreateToDoViewController
        nextViewController.previousViewController = self
    }
}

