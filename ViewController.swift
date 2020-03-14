//
//  ViewController.swift
//  RideappLoginPageDesign
//
//  Created by Shruthi on 06/03/20.
//  Copyright © 2020 Robosoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    let button = UIButton(type:.custom)
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
        
        passwordTextField.rightViewMode = .unlessEditing
        button.setImage(UIImage(named: "eye(1).png"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: -24, bottom: 5, right: 12)
        button.frame = CGRect(x: CGFloat(passwordTextField.frame.size.width-25), y: CGFloat(15), width: CGFloat(15), height: CGFloat(25))
        button.addTarget(self, action: #selector(self.eyeVisibility), for: .touchUpInside)
        passwordTextField.rightView = button
        passwordTextField.rightViewMode = .always
    }
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func loginButtonPressed(_ sender: Any) {
        
        if emailTextField.text == "" || passwordTextField.text == "" {
            showAlert(title: "", message: "Email or password  field can't be empty")
        }
            if (emailTextField.text?.isValidEmail) == false || (emailTextField.text?.isValidPhoneNumber) == false {
                showAlert(title: "Error", message: "Can't find the account")
            }
        /*if (emailTextField.text?.isValidPhoneNumber) == false {
           showAlert(title: "Error", message: "This is not a valid mobile number")
        }*/
        if (passwordTextField.text?.isValidPassword) == false {
            showAlert(title: "Error", message: "This is not a correct password")
        }
    }
    
        
    
    


 @IBAction func eyeVisibility(_ sender: Any){
    (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
    if (sender as! UIButton).isSelected {
        self.passwordTextField.isSecureTextEntry = true
        button.setImage(UIImage(named: "eye(1).png"), for: .normal)
        
    }
    else {
        self.passwordTextField.isSecureTextEntry = false
        button.setImage(UIImage(named: "eye(1).png"), for: .normal)
    }
  }
    
}
