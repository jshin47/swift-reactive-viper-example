//
//  IDependencies.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

protocol IDependencies {
    
    var puppyListView:IPuppyListView { mutating get }
    var puppyListPresenter:IPuppyListPresenter { mutating get }
    var puppyListInteractor:IPuppyListInteractor { mutating get }
    var puppyListWireframe:IPuppyListWireframe { mutating get }
    var puppyListingService:IPuppyListingService { mutating get }
    
}