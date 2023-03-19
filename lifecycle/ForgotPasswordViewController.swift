//
//  ForgotPasswordViewController.swift
//  lifecycle
//
//  Created by Баэль Рыспеков on 19/3/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emaiilTextField: UITextField!
    @IBOutlet weak var button: UIButton!
  
    @IBOutlet weak var image: UIImageView!
    
    
    var email: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        button.layer.cornerRadius = button.frame.height / 2
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        
        emaiilTextField.text = email
    
    }
    



}
