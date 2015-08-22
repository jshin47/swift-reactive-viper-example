//
//  PuppyListViewModel.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import ReactiveCocoa

class PuppyListViewModel {
    
    let propertyPuppyListIsVisible = MutableProperty<Bool>(false)
    
    let propertyPuppyListItems     = MutableProperty<[PuppyListItemViewModel]>([PuppyListItemViewModel]())
    
    private let interactor: IPuppyListInteractor
    
    init(interactor:IPuppyListInteractor) {
        
        self.interactor = interactor
        
        
    }
    
}