//
//  ViewController.swift
//  InputControls
//
//  Created by Tristan Anderson on 6/12/18.
//  Copyright © 2018 Tristan Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var mySlider: UISlider!
 
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "On"
        mybutton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print("Pressed")
    }
    
    @IBAction func switched(_ sender: UISwitch) {
        if(sender.isOn){
            print("On")
            myLabel.text = "On"
        } else {
            print("Off")
            myLabel.text = "Off"
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

