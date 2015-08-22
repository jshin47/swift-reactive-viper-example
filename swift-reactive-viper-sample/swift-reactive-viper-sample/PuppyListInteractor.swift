//
//  PuppyListInteractor.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

class PuppyListInteractor: IPuppyListInteractor {

    private var container:IDependencies
    
    private var presenter:IPuppyListPresenter {
        get {
            return self.container.puppyListPresenter
        }
    }
    
    private var service:IPuppyListingService {
        get {
            return self.container.puppyListingService
        }
    }
    
    init(container:IDependencies) {
        self.container = container
    }
    
    func actionAcceptItemsRequest() {
        
    }
    
}