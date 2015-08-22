//
//  PuppyListPresenter.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/18/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa

class PuppyListPresenter : IPuppyListPresenter {
    
    private var container:IDependencies
    
    private var interactor: IPuppyListInteractorInput {
        get {
            return container.puppyListInteractor
        }
    }
    
    private var wireframe: IPuppyListWireframe {
        get {
            return container.puppyListWireframe
        }
    }
    
    private var view: IPuppyListView {
        get {
            return container.puppyListView
        }
    }
    
    required init(container:IDependencies) {
        
        self.container = container
        
    }
    
    func actionAcceptItemsResponse(items: [PuppyListItemEntity]) {
        
    }
    
    func actionAddItem() {
        
    }
    
    func actionRefreshView() {
        
    }
    
}