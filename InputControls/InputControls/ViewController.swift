//
//  ViewController.swift
//  InputControls
//
//  Created by Tristan Anderson on 6/12/18.
//  Copyright © 2018 Tristan Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySlider: UISlider!
 
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print("Pressed")
    }
    
    @IBAction func switched(_ sender: UISwitch) {
        if(sender.isOn){
            print("On")
        } else {
            print("Off")
        }
        
        print("Slider: \(mySlider.value)")
    }
    
    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKey(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

