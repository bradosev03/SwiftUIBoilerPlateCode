//
//  Steppers.swift
//  BoilerPlateCode
//
//  Created by Brandon Radosevich on 10/21/16.
//  Copyright © 2016 Brandon Radosevich. All rights reserved.
//

import Foundation
import UIKit

class Steppers {
    
    // Empty Init
    init() {
        //Empty Init
    }//end init
    /**
    - _x: X Position on ViewController
        - _y: Y Position on ViewController
        - _width: Width of Stepper
        - _height: Height of Stepper
        - minValue: The minimum value for the stepper to begin at
        - maxVAlue: The maximum value for the stepper to start at
    */
    func createSteppers(_x: CGFloat, _y: CGFloat, _width : CGFloat, _height: CGFloat, minValue : Double, maxValue: Double) -> UIStepper{
        let frame = CGRect(x: _x, y: _y, width: _width, height: _height)
        var stepper = UIStepper(frame: frame)
        stepper.wraps = false
        stepper.autorepeat = false
        stepper.minimumValue = minValue
        stepper.maximumValue = maxValue
        return stepper
    }//end
}//end
