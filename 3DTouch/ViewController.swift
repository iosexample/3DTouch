//
//  ViewController.swift
//  3DTouch
//
//  Created by dong on 12/4/2018.
//  Copyright © 2018 dong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetBackgroundColor()
    }

    func resetBackgroundColor() {
        view.backgroundColor = UIColor(red: 0,
                                       green: 0.5,
                                       blue: 0.5,
                                       alpha: 100)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("touchesBegan")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if traitCollection.forceTouchCapability == .available {
            let touch = touches.first
            
            print("\n force:\(touch!.force),maximumPossibleForce:\(touch!.maximumPossibleForce)")
            
            view.backgroundColor = UIColor(red: (touch?.force)! / (touch?.maximumPossibleForce)!,
                                           green: 0.5,
                                           blue: 0.5,
                                           alpha: 100)
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        print("touchesCancelled")
        resetBackgroundColor()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        print("touchesEnded")
        resetBackgroundColor()
    }
}

