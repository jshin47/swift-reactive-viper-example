//
//  PuppyListView.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/18/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa

class PuppyListView : ProgrammaticViewController, IPuppyListView {
    
    private let uiSubviewNoResultsView = UILabel()
    private let uiSubviewTable = UITableView()
    
    private var container:IDependencies
    
    private var presenter:IPuppyListPresenter {
        get {
            return self.container.puppyListPresenter
        }
    }
    
    init(container:IDependencies) {
        self.container = container
        super.init()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func actionDisplayItems(items: PuppyListViewModel) {
        print("Displaying \(items) items")
    }
    
    func actionToggleNoItemsMessageVisibility(visible: Bool) {
        if (visible) {
            print("SHOULD display NO ITEMS")
        } else {
            print("should NOT DISPLAY because there ARE ITEMS")
        }
    }
    
    // MARK - overrides
    
    override func createInitialView() -> UIView {
        let v = super.createInitialView()
        
        v.backgroundColor = UIColor.purpleColor()
        
        return v
    }
    
    override func setupViewConstraints() {
        
    }
    
}