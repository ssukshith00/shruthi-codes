//
//  DesignableTextField.swift
//  RideappLoginPageDesign
//
//  Created by Shruthi on 06/03/20.
//  Copyright © 2020 Robosoft. All rights reserved.
//

import UIKit
@IBDesignable
class DesignableTextField: UITextField {
    
        let padding = UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 30)
    
        override open func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        override open func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
   
   
    @IBInspectable var leftImage: UIImage? {
        didSet{
            updateView()
        }
    }
    
    func updateView() {
        if let image = leftImage {
            leftViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 25))
            imageView.image = image
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 25))
            view.addSubview(imageView)
            leftView = view
        }
        else {
            leftViewMode = .never
            
        }
        
    }
    @IBInspectable var bottomBorder: CGFloat = 0.0 {
        didSet {
            self.borderStyle = .none
            self.layer.backgroundColor = UIColor.white.cgColor
            self.layer.masksToBounds = false
            self.layer.shadowColor = UIColor.darkGray.cgColor
            self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            self.layer.shadowOpacity = 1.0
            self.layer.shadowRadius = 0.0
            
        }
   }
   
    @IBInspectable var placeHolderTextColor: UIColor? {
        set {
            let placeholderText = self.placeholder != nil ? self.placeholder! : ""
            attributedPlaceholder = NSAttributedString(string:placeholderText, attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
        get {
            return self.placeHolderTextColor
        }
    }
}



