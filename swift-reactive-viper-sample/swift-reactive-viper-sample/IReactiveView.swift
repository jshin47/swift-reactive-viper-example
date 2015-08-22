//
//  IReactiveView.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/22/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit

@objc protocol IReactiveView {
    func bindViewModel(viewModel: AnyObject)
}