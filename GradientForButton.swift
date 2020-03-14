//
//  GradientForButton.swift
//  RideappLoginPageDesign
//
//  Created by Shruthi on 10/03/20.
//  Copyright © 2020 Robosoft. All rights reserved.
//

import UIKit
@IBDesignable
class GradientForButton: UIButton {
    @IBInspectable public var firstColor: UIColor = UIColor.white{
            didSet{
                updateView()
            }
        }
        @IBInspectable public var secondColor: UIColor = UIColor.white{
            didSet{
                updateView()
            }
        }
        @IBInspectable public var horizontalGradient: Bool = false{
            didSet{
                updateView()
            }
        }
        override class var layerClass: AnyClass{
            get{
                return CAGradientLayer.self
            }
        }
        
        func updateView(){
            let layer = self.layer as! CAGradientLayer
            layer.colors = [firstColor.cgColor, secondColor.cgColor]
            
            if horizontalGradient {
                layer.startPoint = CGPoint(x: 0.0, y: 0.5)
                layer.endPoint = CGPoint(x: 1.0, y: 1.0)
            }
            else{
                layer.startPoint = CGPoint(x: 0.0, y: 0.0)
                layer.endPoint = CGPoint(x: 0.0, y: 1.0)
            }
        }
        
    }



