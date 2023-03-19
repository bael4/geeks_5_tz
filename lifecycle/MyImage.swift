//
//  MyImage.swift
//  lifecycle
//
//  Created by Баэль Рыспеков on 20/3/23.
//

import UIKit

class MyImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    private func configure() {
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }
}

