//
//  PasswordTextField.swift
//  lifecycle
//
//  Created by Баэль Рыспеков on 19/3/23.
//


import UIKit

class PasswordTextField: UITextField {
    
    private let showPasswordButton = UIButton(type: .custom)
    private var isPasswordHidden = true
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // Устанавливаем размер кнопки в соответствии с размером правого представления
        showPasswordButton.frame = rightViewRect(forBounds: bounds)
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var rightViewRect = super.rightViewRect(forBounds: bounds)
        
        rightViewRect.origin.x = bounds.width - rightViewRect.width - 10
          
        return rightViewRect
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        // настройка кнопки для отображения и скрытия пароля
        showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
        rightView = showPasswordButton
        rightViewMode = .always
        isSecureTextEntry = true
        showPasswordButton.tintColor = .darkGray
    }
    
    @objc private func showPasswordButtonTapped() {
        // изменение значения isSecureTextEntry
        isSecureTextEntry.toggle()
        
        // изменение изображения кнопки в зависимости от значения isSecureTextEntry
        let imageName = isSecureTextEntry ? "eye.slash" : "eye"
        showPasswordButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
}
