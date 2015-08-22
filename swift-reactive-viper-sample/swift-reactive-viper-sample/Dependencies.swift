//
//  Dependencies.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

struct Dependencies: IDependencies {
    
    lazy var puppyListView:IPuppyListView = {
        return PuppyListView(container: self)
    }()
    
    lazy var puppyListPresenter:IPuppyListPresenter = {
        return PuppyListPresenter(container: self)
    }()
    
    lazy var puppyListInteractor:IPuppyListInteractor = {
        return PuppyListInteractor(container: self)
    }()
    
    lazy var puppyListWireframe:IPuppyListWireframe = {
        return PuppyListWireframe(container: self)
    }()
    
    lazy var puppyListingService:IPuppyListingService = {
        return PuppyListingService(container: self)
    }()
    
}