//
//  Images.swift
//  BoilerPlateCode
//
//  Created by Brandon Radosevich on 10/21/16.
//  Copyright © 2016 Brandon Radosevich. All rights reserved.
//

import Foundation
import UIKit

class Images{
    
    init() {
        //Empty Init
    }//end
    /**
     - parameters:
     - x: X Position on Storyboard
     - y: Y Position on Storyboard
     - width: Width of the UIImage
     - height: Height of the UIImage
     - image: UIImage to use for the UIImageView
     - description: Creates a UIImageView from the given parameters
     - returns UIImageView
     */
    func placeImage(_x: CGFloat, _y: CGFloat, _width: CGFloat, _height: CGFloat, _image: UIImage) -> UIImageView{
        let imageView = UIImageView(image: _image)
        imageView.frame = CGRect(x: _x, y: _y, width: _width, height: _height)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }//end placeImage    
}//end

