//
//  GlobalSignalProducers.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/18/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa

func handlePingError(error:NSError?) -> NSError {
    return NSError(domain: "BLEH", code: 1, userInfo: ["originalError" : error!])
}

func svcPing() -> SignalProducer<String, NSError> {
    return SignalProducer {
        sink, disposable in
        sendNext(sink, "Ping")
    }
}