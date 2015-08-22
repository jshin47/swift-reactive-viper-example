//
//  IPuppyListPresenter.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/18/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

protocol IPuppyListPresenter: IPuppyListInteractorOutput {
    
    func actionRefreshView()
    func actionAddItem()
    
}