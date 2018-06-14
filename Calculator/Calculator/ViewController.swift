//
//  ViewController.swift
//  Calculator
//
//  Created by Tristan Anderson on 6/12/18.
//  Copyright © 2018 Tristan Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayNum: Double = 0.0
    var display: String = ""
    var operate: Int = 5
    var num1: Double = 0.0
    var num2: Double = 0.0
    @IBOutlet weak var numberWindow: UILabel!
    
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    
    @IBOutlet weak var ac: UIButton!
    @IBOutlet weak var plusMinus: UIButton!
    @IBOutlet weak var percent: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var equals: UIButton!
    @IBOutlet weak var decimal: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateWindow()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func aClear(_ sender: UIButton) {
        displayNum = 0.0
        updateWindow()
    }

    
    
    func updateWindow(){
        display = String(displayNum)
        numberWindow.text = display
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        print(sender.tag)
        operate = sender.tag
        num1 = displayNum
        displayNum = 0.0
    }
    
    @IBAction func equalPressed(_ sender: UIButton) {
        num2 = displayNum
        switch operate {
        case 0:
            displayNum = num1 / num2
        case 1:
            displayNum = num1 * num2
        case 2:
            displayNum = num1 - num2
        case 3:
            displayNum = num1 + num2
        default:
            displayNum = displayNum + 0
        }
        updateWindow()
        num1 = 0.0
        num2 = 0.0
    }
    
    
    @IBAction func numPressed(_ sender: UIButton) {
        print(sender.tag)
        numBuilder(sender.tag)
    }
    
    func numBuilder(_ newNum: Int){
        displayNum*=10
        displayNum+=Double(newNum)
        updateWindow()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

