//
//  SecondViewController.swift
//  Assignment4
//
//  Created by Ivan Pavlenko on 03.09.2021.
//  Copyright © 2021 Ivan Besarab. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var coffeeMachine: CoffeeMachine!
    var historyList: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }
    
    @IBOutlet weak var ConsoleSecondLabel: UILabel!
    
    @IBAction func addWaterButton() {
        ConsoleSecondLabel.text = coffeeMachine.addWater()
        addToHistory(ConsoleSecondLabel.text!)
    }
    
    @IBAction func addBeansButton() {
        ConsoleSecondLabel.text = coffeeMachine.addBeans()
        addToHistory(ConsoleSecondLabel.text!)
    }
    
    @IBAction func addMilkButton() {
        ConsoleSecondLabel.text = coffeeMachine.addMilk()
        addToHistory(ConsoleSecondLabel.text!)
    }
    
    private func addToHistory(_ string: String) {
        coffeeMachine.historyList.append(string)
    }
   
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        historyList = []
//        }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        (tabBarController?.viewControllers?[2] as? HistoryViewController)?.history = historyList
//    }
    
}

