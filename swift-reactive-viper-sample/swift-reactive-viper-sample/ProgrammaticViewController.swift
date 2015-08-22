//
//  ProgrammaticViewController.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/21/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa
import SnapKit

class ProgrammaticViewController: UIViewController {
    
    private(set) var didSetupConstraints = false
    
    init() {
        super.init(nibName: nil, bundle:nil)
        self.bind()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func loadView() {
        let v = self.createInitialView()
        
        self.view = v
        
        self.view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        
        if (!self.didSetupConstraints) {
            self.didSetupConstraints = true
            self.setupViewConstraints()
        }
        
        super.updateViewConstraints()
    }
    
    // MARK - Private methods
    
    private func bind() {
        
    }
    
    func createInitialView() -> UIView {
        return UIView()
    }
    
    func setupViewConstraints() {
        
//        for case let v as UIView in self.view.subviews {
//            
//        }
//        
    }
    
    
}