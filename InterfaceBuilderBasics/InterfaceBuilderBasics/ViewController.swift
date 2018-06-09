//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Tristan Anderson on 6/9/18.
//  Copyright © 2018 Tristan Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var label: UILabel!
    
    @IBAction func changeLabel(_ sender: Any) {
        label.text = "Worked"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

