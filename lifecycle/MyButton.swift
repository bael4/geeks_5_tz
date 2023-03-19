//
//  MyButton.swift
//  lifecycle
//
//  Created by Баэль Рыспеков on 20/3/23.
//

import UIKit

class MyButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = frame.height / 2
    }
}
