//
//  Fields.swift
//  BoilerPlateCode
//
//  Created by Brandon Radosevich on 10/21/16.
//  Copyright © 2016 Brandon Radosevich. All rights reserved.
//

import UIKit
import Formatter
import InputValidator
import Validation
import FormTextField

// Class Implementation of TextFields for Programatically Designing a UIViewController
class Fields {
    
    
    init() {
        //Empty Init
    }//end init
    
    /**
     - parameters:
     - x : The x position on the view controller
     - y : The y position on the view controller
     - width: The width of the Textfield
     - height: The height of the Textfield
     - placeholder: The placeholder text for the Textfield
     - inputType: The Textfield format type
     - returns FormTextField()
     */
    func createTextField(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, placeholder : String, inputType : FormTextFieldInputType) -> FormTextField{
        var field : FormTextField = {
            let textField = FormTextField(frame: CGRect(x: x, y: y, width: width, height: height))
            textField.inputType = inputType
            textField.placeholder = placeholder
            textField.textColor = .black
            textField.activeTextColor = .gray
            textField.backgroundColor = .white
            textField.inactiveBackgroundColor = .white
            textField.activeBackgroundColor = .gray
            textField.cornerRadius = CGFloat(12.0)
            //Validation
            var validation = Validation()
            validation.required = true
            validation.format = "[\\w._%+-]+@[\\w.-]+\\.\\w{2,}"
            let inputValidator = InputValidator(validation: validation)
            textField.inputValidator = inputValidator
            return textField
        }()
        return field
    }//end createTextField
    
    /**
     - parameters:
     - previousFrame : The Reference to the previous Textfield
     - placeholder: The placeholder text for the Textfield
     - inputType: The Textfield format type
     - description: This function creates a textfield from the previous Textfield or subview.
     - returns FormTextField()
     */
    func createTextField(previousFrame : CGRect, placeholder: String, inputType: FormTextFieldInputType) -> FormTextField{
        var field : FormTextField = {
            let margin = CGFloat(20)
            var previousFrame = previousFrame
            previousFrame.origin.y = previousFrame.maxY + margin
            let textField = FormTextField(frame: previousFrame)
            textField.inputType = inputType
            textField.placeholder = placeholder
            //Validation
            textField.textColor = .black
            textField.activeTextColor = .black
            textField.backgroundColor = .white
            textField.activeBackgroundColor = .gray
            textField.inactiveBackgroundColor = .gray
            textField.cornerRadius = CGFloat(12.0)
            var validation = Validation()
            validation.required = true
            validation.format = "[\\w._%+-]+@[\\w.-]+\\.\\w{2,}"
            let inputValidator = InputValidator(validation: validation)
            textField.inputValidator = inputValidator
            return textField
        }()
        return field
    }//end
    /**
     - parameters:
     - previousFrame: Uses the previous Textfield or other subview for positions on Storyboard.
     
     - description: Creates a Password TextField with given parameters with Keyboard set to Password.
     
     - returns FormTextField
     */
    func createPasswordTextField(previousFrame : CGRect) -> FormTextField{
        var field : FormTextField = {
            //let password = FormTextField(frame: CGRect(x: x, y: y, width: width, height: height))
            let margin = CGFloat(20)
            var previousFrame = previousFrame
            previousFrame.origin.y = previousFrame.maxY + margin
            let password = FormTextField(frame: previousFrame)
            password.inputType = .Password
            password.placeholder = "Password:"
            //Validation
            var validation = Validation()
            validation.required = true
            validation.format = "[\\w._%+-]+@[\\w.-]+\\.\\w{2,}"
            let inputValidator = InputValidator(validation: validation)
            password.inputValidator = inputValidator
            password.leftViewMode = UITextFieldViewMode.always
            password.textColor = .black
            password.activeTextColor = .black
            password.backgroundColor = .white
            password.activeBackgroundColor = .gray
            password.inactiveBackgroundColor = .white
            password.cornerRadius = CGFloat(12.0)
            let passwordLogoSubView =  UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
            let passwordLogo = #imageLiteral(resourceName: "Lock")
            passwordLogoSubView.image = passwordLogo
            password.leftView = passwordLogoSubView
            return password
        }()
        return field
    }//end
    
    /**
     - parameters:
     - x: X Position on Storyboard
     - y: Y Position on Storyboard
     - width: Width of the Textfield
     - height: Height of the Textfield
     - description: Creates a Username TextField with given parameters
     - returns FormTextField
     */
    func createUsernameTextField(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> FormTextField{
        var field : FormTextField = {
            let username = FormTextField(frame: CGRect(x: x, y: y, width: width, height: height))
            username.inputType = .Username
            username.placeholder = "Username:"
            //Validation
            var validation = Validation()
            validation.required = true
            validation.format = "[\\w._%+-]+@[\\w.-]+\\.\\w{2,}"
            let inputValidator = InputValidator(validation: validation)
            username.inputValidator = inputValidator
            username.textColor = .black
            username.activeTextColor = .gray
            username.backgroundColor = .white
            username.activeBackgroundColor = .gray
            username.inactiveBackgroundColor = .white
            username.cornerRadius = CGFloat(12.0)
            let userLogoSubView = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
            let userLogo = #imageLiteral(resourceName: "User")
            userLogoSubView.image = userLogo
            username.leftView = userLogoSubView
            return username
        }()
        return field
    }
}//end class

