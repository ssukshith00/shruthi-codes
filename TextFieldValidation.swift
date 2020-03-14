//
//  TextFieldValidation.swift
//  RideappLoginPageDesign
//
//  Created by Shruthi on 06/03/20.
//  Copyright © 2020 Robosoft. All rights reserved.
//

import Foundation

extension String {
    
    var isValidEmail: Bool{
        do {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: self)
        }
    }
    var isValidPhoneNumber: Bool {
        do{
            let phoneNumberRegex = "^[6-9]\\d{9}$"
            let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
            return phoneTest.evaluate(with: self)
        }
    }
    var isValidPassword: Bool{
        do {
            let passwordRegex = "^(?=.*\\d)(?=.*[a-z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
            return passwordTest.evaluate(with: self)
        }
    }

}





