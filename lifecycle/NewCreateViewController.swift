//
//  NewCreateViewController.swift
//  lifecycle
//
//  Created by Баэль Рыспеков on 19/3/23.
//

import UIKit

class NewCreateViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyBoradSetup()
    }

    @IBAction func loginAction(_ sender: Any) {
      
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true || mobileNumberTextField.text?.isEmpty ?? true || userNameTextField.text?.isEmpty ?? true  {
            
            textField(emailTextField)
            textField(passwordTextField)
            textField(mobileNumberTextField)
            textField(userNameTextField)
            
        }else{
            
            let vc: ForgotPasswordViewController = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
                  self.navigationController?.pushViewController(vc, animated: true)
                 vc.email = emailTextField.text
        }
        
        
        if emailTextField.text!.count > 0 || passwordTextField.text!.count > 0{
            
           emailTextField.layer.borderColor = UIColor.white.cgColor
           passwordTextField.layer.borderColor = UIColor.white.cgColor
           mobileNumberTextField.layer.borderColor = UIColor.white.cgColor
           userNameTextField.layer.borderColor = UIColor.white.cgColor
                          
        }
        
    }
    
    func textField (_ text:UITextField)  {
        
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.red.cgColor
        text.placeholder = "заполните поле"
        
    }
    
    
    
    
    func keyBoradSetup () {
        
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                 view.addGestureRecognizer(tapGesture)
        
    }
    
    
    
    @objc private func hideKeyboard() {
              view.endEditing(true)
          }
    
}
