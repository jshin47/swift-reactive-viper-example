//
//  IViperView+UIViewController.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit

extension IViperView where Self: UIViewController {
    
    var controller:UIViewController {
        get {
            return self
        }
    }
    
}