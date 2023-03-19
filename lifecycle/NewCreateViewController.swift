//
//  NewCreateViewController.swift
//  lifecycle
//
//  Created by Баэль Рыспеков on 19/3/23.
//

import UIKit

class NewCreateViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = button.frame.height / 2
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
    
    }

    @IBAction func loginAction(_ sender: Any) {
        
        let vc: ForgotPasswordViewController = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
              self.navigationController?.pushViewController(vc, animated: true)
        vc.email = emailTextField.text
        
    }
    
}
