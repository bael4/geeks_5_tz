//
//  ViewController.swift
//  lifecycle
//
//  Created by Баэль Рыспеков on 17/3/23.
//




import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {

   



    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: PasswordTextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(labelTapped)))
        
    keyBoradSetup()
    }
   
    
    @objc func labelTapped() {
        print("UILabel был нажат")
        let vc: NewCreateViewController = storyboard?.instantiateViewController(withIdentifier: "NewCreateViewController") as! NewCreateViewController
                  self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {

            textField(emailTextField)
            textField(passwordTextField)
               }
        if emailTextField.text!.count > 0 || passwordTextField.text!.count > 0{
                   emailTextField.layer.borderColor = UIColor.white.cgColor
            passwordTextField.layer.borderColor = UIColor.white.cgColor
                           }
      
                }
    
    
    func textField (_ text:UITextField)  {
        text.layer.borderWidth = 1
      text.layer.borderColor = UIColor.red.cgColor
       text.placeholder = "заполните поле"
    }
    
    
    func keyBoradSetup(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                 view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func hideKeyboard() {
              view.endEditing(true)
          }
    
}

