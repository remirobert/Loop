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
    var loop1: Loop!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loop = Loop(every: 5) {
            NSLog("loop 1")
            self.loop.stop()
            self.loop.start()
        }
        
        loop1 = Loop(frequency: 600)
        
        loop1.completionHandler = {
            
        }
    }    
}