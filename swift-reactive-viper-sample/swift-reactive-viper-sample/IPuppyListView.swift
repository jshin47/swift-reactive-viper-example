//
//  IPuppyListView.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/18/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

protocol IPuppyListView: IViperView {
    
    func actionToggleNoItemsMessageVisibility(visible:Bool)
    func actionDisplayItems(items:PuppyListViewModel)
    
}