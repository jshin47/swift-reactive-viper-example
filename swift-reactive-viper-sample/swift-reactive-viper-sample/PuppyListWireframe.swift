//
//  PuppyListWireframe.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit

class PuppyListWireframe: IPuppyListWireframe {
    
    private var container:IDependencies
    
    private var presenter:IPuppyListPresenter {
        get {
            return self.container.puppyListPresenter
        }
    }
    
    private var view: IPuppyListView {
        get {
            return container.puppyListView
        }
    }
    
    init(container:IDependencies) {
        self.container = container
    }
    
    func actionDisplayPuppyListUserInterfaceInWindow(window: UIWindow) {
        print("Displaying list UI in window")
        self.present(rootViewController: view.controller, inWindow: window)
    }
    
}