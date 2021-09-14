//
//  HistoryViewController.swift
//  CM13
//
//  Created by Ivan Pavlenko on 12.09.2021.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet private weak var tableView: UITableView!
    
    //    var history: Array<String> = []
    var coffeeMachine: CoffeeMachine!
    var historyList: Array<String>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffeeMachine.historyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        cell.textLabel?.text = coffeeMachine.historyList[indexPath.row]
        cell.textLabel?.textColor = UIColor.systemGray
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //        historyList += history
        tableView.reloadData()
        //        history = []
    }
    
}
