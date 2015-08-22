//
//  ApplicationSpecificExceptions.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/18/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

enum InitializerError : ErrorType {
    case InvalidChoiceOfInitializer
    case InitializerNotImplemented
    case InvalidArguments
}