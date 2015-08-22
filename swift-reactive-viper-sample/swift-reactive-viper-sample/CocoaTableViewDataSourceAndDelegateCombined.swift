//
//  CocoaTableViewDataSourceAndDelegateCombined.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/22/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit

class CocoaTableViewDataSourceAndDelegateCombined: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    private let templateCell: UITableViewCell
    var data: [AnyObject]
    
    
    init(data: [AnyObject], templateCell: UITableViewCell) {
        self.data = data
        self.templateCell = templateCell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item: AnyObject = data[indexPath.row]
        let cell  = tableView.dequeueReusableCellWithIdentifier(templateCell.reuseIdentifier!) as UITableViewCell!
        if let reactiveView = cell as? IReactiveView {
            reactiveView.bindViewModel(item)
        }
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return templateCell.frame.size.height
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
}