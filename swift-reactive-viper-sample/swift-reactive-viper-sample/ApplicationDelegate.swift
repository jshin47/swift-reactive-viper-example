//
//  ApplicationDelegate.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/18/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa

@UIApplicationMain
class ApplicationDelegate : UIResponder, UIApplicationDelegate {
    
    var window:UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)
    
    internal func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        var deps = Dependencies()
        
        deps.puppyListWireframe.present(rootViewController: deps.puppyListView.controller, inWindow: self.window!)
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}