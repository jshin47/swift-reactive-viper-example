//
//  IPuppyListInteractorInputOutput.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/19/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation

protocol IPuppyListInteractorInput {
    func actionAcceptItemsRequest()
}

protocol IPuppyListInteractorOutput {
    func actionAcceptItemsResponse(items: [PuppyListItemEntity])
}