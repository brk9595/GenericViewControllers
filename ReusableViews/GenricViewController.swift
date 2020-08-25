//
//  GenricViewController.swift
//  ReusableViews
//
//  Created by Bharath  Raj kumar on 26/08/20.
//

import UIKit


public protocol AutoLayoutView {
    func setupAutoLayoutConstraints(_ parentViewController: UIViewController?)
}

public protocol RootView: AutoLayoutView {}

// A protocol for views that will be contained in a GenericViewController
extension RootView {
    func setupAutoLayoutConstraints(_ parentViewController: UIViewController?) { }
}

open class GenricViewController<V: RootView>: UIViewController where V: UIView {
    
    public var rootView: V! {
        return (self.view as! V)
    }
    
    override open func loadView() {
        self.view = V()
        self.rootView.setupAutoLayoutConstraints(self)
    }

}
