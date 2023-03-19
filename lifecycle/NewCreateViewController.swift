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
        button.layer.cornerRadius = button.frame.height / 2
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
    
    }

    @IBAction func loginAction(_ sender: Any) {
      
        
        
        
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true || mobileNumberTextField.text?.isEmpty ?? true || userNameTextField.text?.isEmpty ?? true  {
                   emailTextField.layer.borderWidth = 1
                   emailTextField.layer.borderColor = UIColor.red.cgColor
                   emailTextField.placeholder = "заполните поле"
            
                   passwordTextField.layer.borderWidth = 1
                   passwordTextField.layer.borderColor = UIColor.red.cgColor
                   passwordTextField.placeholder = "заполните поле"
            
            mobileNumberTextField.layer.borderWidth = 1
            mobileNumberTextField.layer.borderColor = UIColor.red.cgColor
            mobileNumberTextField.placeholder = "заполните поле"
          
            
            userNameTextField.layer.borderWidth = 1
            userNameTextField.layer.borderColor = UIColor.red.cgColor
            userNameTextField.placeholder = "заполните поле"
            
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
    
}
