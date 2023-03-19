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

   
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image: UIImageView!

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: PasswordTextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        
        button.layer.cornerRadius = button.frame.height / 2
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(labelTapped)))
    }
   
    
    @objc func labelTapped() {
        print("UILabel был нажат")
        let vc: NewCreateViewController = storyboard?.instantiateViewController(withIdentifier: "NewCreateViewController") as! NewCreateViewController
                  self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
                   emailTextField.layer.borderWidth = 1
                   emailTextField.layer.borderColor = UIColor.red.cgColor
                   emailTextField.placeholder = "заполните поле"
                   passwordTextField.layer.borderWidth = 1
                   passwordTextField.layer.borderColor = UIColor.red.cgColor
                   passwordTextField.placeholder = "заполните поле"
               }
        if emailTextField.text!.count > 0 || passwordTextField.text!.count > 0{
                   emailTextField.layer.borderColor = UIColor.white.cgColor
            passwordTextField.layer.borderColor = UIColor.white.cgColor
                           }
      
                }
    
}

