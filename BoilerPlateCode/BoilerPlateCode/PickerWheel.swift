//
//  PickerWheel.swift
//  BoilerPlateCode
//
//  Created by Brandon Radosevich on 10/21/16.
//  Copyright © 2016 Brandon Radosevich. All rights reserved.
//

import Foundation
import UIKit


class PickerWheel{
    
    //Empty Init
    init() {
        //Empty Init
    }//end init
    /**
     - Parameters:
        - _x : X Position on View Controller
        - _y : Y Position on View Controller
        - width: The width of the picker wheel
        - height: The height of the picker wheel
    */
    func createDatePicker(_x: CGFloat, _y: CGFloat, _width: CGFloat, _height: CGFloat) -> UIDatePicker{
        let picker : UIDatePicker = UIDatePicker()
        let frame = CGRect(x: _x, y: _y, width: _width, height: _height)
        picker.timeZone = NSTimeZone.local
        picker.frame = frame
        picker.backgroundColor = .white // Change to Different Color Depending on Project
        picker.layer.cornerRadius = 5.0
        picker.layer.shadowOpacity = 0.5
        return picker
    }//end
}
