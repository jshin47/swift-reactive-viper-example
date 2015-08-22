//
//  PuppyListingService.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import ReactiveCocoa

class PuppyListingService : IPuppyListingService {
    
    private var container:IDependencies
    
    init(container:IDependencies) {
        self.container = container
    }
    
    func get_puppies() {
        
    }
    
}