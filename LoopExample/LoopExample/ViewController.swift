//
//  ViewController.swift
//  LoopExample
//
//  Created by Remi Robert on 21/04/16.
//  Copyright © 2016 Remi Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loop: Loop!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loop = Loop(every: 5) {
            NSLog("loop fired 🔥")
        }
    }
}