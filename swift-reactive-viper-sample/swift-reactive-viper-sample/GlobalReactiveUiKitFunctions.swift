//
//  GlobalReactiveUiKitFunctions.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/21/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import ObjectiveC
import UIKit
import ReactiveCocoa

func lazyAssociatedProperty<T: AnyObject>(host: AnyObject,
    key: UnsafePointer<Void>, factory: ()->T) -> T {
        var associatedProperty = objc_getAssociatedObject(host, key) as? T
        
        if associatedProperty == nil {
            associatedProperty = factory()
            objc_setAssociatedObject(host, key, associatedProperty,
                .OBJC_ASSOCIATION_RETAIN)
        }
        return associatedProperty!
}

func lazyMutableProperty<T>(host: AnyObject, _ key: UnsafePointer<Void>,
    setter: T -> (), getter: () -> T) -> MutableProperty<T> {
        return lazyAssociatedProperty(host, key: key) {
            let property = MutableProperty<T>(getter())
            property.producer
                .start(next: {
                    newValue in
                    setter(newValue)
                })
            return property
        }
}