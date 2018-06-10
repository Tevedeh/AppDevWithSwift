//
//  ViewController.swift
//  LightTwo
//
//  Created by Tristan Anderson on 6/9/18.
//  Copyright © 2018 Tristan Anderson. All rights reserved.
//

import UIKit

var light = true

class ViewController: UIViewController {
    
    @IBOutlet weak var lightSwitch: UIButton!
    
    @IBAction func press(_ sender: Any) {
        light = !light
        update()
    }
    
    func update(){
        
        if(light){
            lightSwitch.setTitle("Turn off", for: .normal)
            view.backgroundColor = .white
        } else{
            lightSwitch.setTitle("Turn on", for: .normal)
            view.backgroundColor = .black
        }
        
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

