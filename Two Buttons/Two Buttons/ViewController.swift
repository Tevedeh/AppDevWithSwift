//
//  ViewController.swift
//  Two Buttons
//
//  Created by Tristan Anderson on 6/12/18.
//  Copyright © 2018 Tristan Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
   
    
    @IBOutlet weak var myText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
            myLabel.text = myText.text
        
    }
    
    @IBAction func clearButtonPresed(_ sender: UIButton) {
        myLabel.text = ""
        myText.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

