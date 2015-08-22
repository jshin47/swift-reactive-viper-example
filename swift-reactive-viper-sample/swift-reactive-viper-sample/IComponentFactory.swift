//
//  IComponentFactory.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

protocol IComponentFactory {
    
    typealias TIn
    typealias TOut
    
    static func withMethod(factory: TIn -> TOut) -> Self
}