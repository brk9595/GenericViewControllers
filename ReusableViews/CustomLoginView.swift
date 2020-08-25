//
//  CustomLoginView.swift
//  ReusableViews
//
//  Created by Bharath  Raj kumar on 26/08/20.
//

import Foundation
import UIKit


class LoginView: UIView, RootView {
    
    let customLoginViewComponent = CustomLoginView()
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addSubview(customLoginViewComponent)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(customLoginViewComponent)
    }
    
    
    func setupAutoLayoutConstraints(_ parentViewController: UIViewController?) {
        guard let parentViewController = parentViewController else {
            fatalError()
        }
        
        NSLayoutConstraint.activate([
            customLoginViewComponent.centerXAnchor.constraint(equalTo: parentViewController.view.centerXAnchor),
            customLoginViewComponent.centerYAnchor.constraint(equalTo: parentViewController.view.centerYAnchor),
            customLoginViewComponent.leadingAnchor.constraint(equalTo: parentViewController.view.leadingAnchor, constant: 8),
            customLoginViewComponent.trailingAnchor.constraint(equalTo: parentViewController.view.trailingAnchor, constant: -8),
        ])
    }
}


