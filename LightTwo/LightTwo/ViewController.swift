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
    
    
    @IBAction func press(_ sender: Any) {
        light = !light
        update()
    }
    
    func update(){
        
        view.backgroundColor = light ? .white : .black
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

