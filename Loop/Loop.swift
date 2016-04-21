//
//  Loop.swift
//  Loop
//
//  Created by Remi Robert on 21/04/16.
//  Copyright © 2016 Remi Robert. All rights reserved.
//

import QuartzCore

public class Loop {
    private var trigger = 60
    private var counter = 0
    private var isPaused = false
    private var displayLink: CADisplayLink!
    
    public var completionHandler: (() -> ())?
    
    public init(every duration: Double, handler: (() -> ())? = nil) {
        trigger = Int(60 * duration)
        completionHandler = handler
        runLoop()
    }
    
    public init(frequency: Double, handler: (() -> ())? = nil) {
        trigger = Int(60 / frequency)
        completionHandler = handler
        runLoop()
    }
    
    private func runLoop() {
        displayLink = CADisplayLink(target: self, selector: #selector(update))
        displayLink.addToRunLoop(NSRunLoop.currentRunLoop(), forMode: NSRunLoopCommonModes)
    }
    
    public func start() {
        counter = 0
        runLoop()
    }
    
    public func stop() {
        displayLink.invalidate()
    }
    
    public func pause() {
        isPaused = true
    }
    
    public func resume() {
        isPaused = false
    }
    
    @objc func update() {
        if counter < trigger {
            if !isPaused {
                counter += 1
            }
            return
        }
        counter = 0
        self.completionHandler?()
    }
}