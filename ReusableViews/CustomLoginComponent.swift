//
//  CustomLoginComponent.swift
//  ReusableViews
//
//  Created by Bharath  Raj kumar on 26/08/20.
//

import Foundation
import UIKit

class CustomLoginView: UIView {
    
    let emailField = UITextField()
    let passWordField = UITextField()
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createLayOut()
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createLayOut()
    }
    
    private func createLayOut() {
        self.translatesAutoresizingMaskIntoConstraints = false
        emailField.translatesAutoresizingMaskIntoConstraints = false
        passWordField.translatesAutoresizingMaskIntoConstraints = false
        
        emailField.placeholder = "Email"
        passWordField.placeholder = "Password"
        
        emailField.borderStyle = .roundedRect
        passWordField.borderStyle = .roundedRect
        
        passWordField.isSecureTextEntry = true
        
        self.addSubview(emailField)
        self.addSubview(passWordField)
        
        NSLayoutConstraint.activate([
            
            emailField.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            emailField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            emailField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            passWordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 16),
            passWordField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            passWordField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            passWordField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
    }
}
