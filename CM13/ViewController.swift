//
//  ViewController.swift
//  CM13
//
//  Created by Ivan Pavlenko on 11.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let coffeeMachine13 = CoffeeMachine()
    var historyList: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (tabBarController?.viewControllers?[1] as? SecondViewController)?.coffeeMachine = coffeeMachine13
        (tabBarController?.viewControllers?[2] as? HistoryViewController)?.coffeeMachine = coffeeMachine13
    }
    
    @IBOutlet weak var consoleLabel: UILabel!
    
    @IBAction func tapPressed(_ sender: UITapGestureRecognizer) {
        consoleLabel.text = coffeeMachine13.makeAmericano()
        addToHistory(consoleLabel.text!)
    }
    
    @IBAction func tapPressedCap(_ sender: UITapGestureRecognizer) {
        consoleLabel.text = coffeeMachine13.makeCapuccino()
        addToHistory(consoleLabel.text!)
    }
    
    private func addToHistory(_ string: String) {
        coffeeMachine13.historyList.append(string)
    }
   
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        historyList = []
//        }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        (tabBarController?.viewControllers?[2] as? HistoryViewController)?.history = historyList
//    }
}
 


