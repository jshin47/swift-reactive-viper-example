//
//  ReflectionGlobals.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

struct Reflection {
    
    static func keyForProtocol<P>(aProtocol: P.Type) -> String {
        return ("\(aProtocol)")
    }
    
}