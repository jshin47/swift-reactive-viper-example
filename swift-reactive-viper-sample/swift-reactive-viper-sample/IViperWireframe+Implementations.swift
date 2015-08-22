//
//  IViperWireframe+Implementations.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit

extension IViperWireframe {
    
    func present(rootViewController rootViewController: UIViewController, inWindow: UIWindow) {
        
        inWindow.rootViewController = UINavigationController(rootViewController: rootViewController)
        
    }
    
}