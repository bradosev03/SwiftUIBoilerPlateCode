//
//  Labels.swift
//  BoilerPlateCode
//
//  Created by Brandon Radosevich on 10/21/16.
//  Copyright © 2016 Brandon Radosevich. All rights reserved.
//

import Foundation
import UIKit

class Labels {
    
    //Empty Init
    init() {
        //Labels
    }//end
    
    func createLabel(_x: CGFloat,_y: CGFloat, _width: CGFloat, _height: CGFloat, _label: String, _fontColor : UIColor) -> UILabel{
        let frame = CGRect(x: _x, y: _y, width: _width, height: _height)
        let label = UILabel(frame: frame)
        //label.center = CGPoint(x: _x , y: _y)
        //label.center = CGPoint(x: ( _width / 2), y: ( _height / 2))
        label.textAlignment = .center
        label.text = _label
        label.textColor = _fontColor
        return label
    }//end createLabel
    
    func createTitleLabel(_x: CGFloat, _y: CGFloat, _width : CGFloat, _height : CGFloat, _label : String, _fontColor : UIColor, _fontSize : CGFloat, _backgroundColor: UIColor, _center: CGPoint) -> UILabel{
        let frame = CGRect(x: _x, y: _y, width: _width, height: _height)
        let label = UILabel(frame: frame)
        //label.center = CGPoint(x: _x , y: _y)
        //label.center = CGPoint(x: ( _width / 2), y: ( _height / 2))
        label.textAlignment = .center
        label.text = _label
        label.textColor = _fontColor
        label.font = label.font.withSize(_fontSize)
        label.backgroundColor = _backgroundColor
        label.textAlignment = .center
        //label.center = _center
        return label
    }
}//end

