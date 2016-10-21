//
//  Switches.swift
//  BoilerPlateCode
//
//  Created by Brandon Radosevich on 10/21/16.
//  Copyright © 2016 Brandon Radosevich. All rights reserved.
//


import Foundation
import UIKit

class Switches {
    
    init() {
        //Empty Init
    }//end
    /**
     - parameters:
     - x: X Position on Storyboard
     - y: Y Position on Storyboard
     - width: Width of the UISwitch
     - height: Height of the UISwitch
     - switchState: A Boolean value for initial switch state
     - description: Creates a Binary Switch with given parameters
     - returns UISwitch
     */
    func binarySwitch(_x: CGFloat, _y: CGFloat, _width: CGFloat, _height: CGFloat, switchState: Bool) -> UISwitch{
        var frame = CGRect(x: _x, y: _y, width: _width, height: _height)
        var binarySwitch = UISwitch(frame: frame)
        binarySwitch.isOn = switchState
        binarySwitch.setOn(true, animated: false);
        return binarySwitch
    }
}//end
