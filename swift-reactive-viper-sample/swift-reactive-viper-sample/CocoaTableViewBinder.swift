//
//  CocoaTableViewBinder.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/22/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa

class CocoaTableViewBinder<T: AnyObject>: NSObject {
    
    //MARK: Properties
    
    var delegate: UITableViewDelegate?
    
    private let tableView: UITableView
    private let templateCell: UITableViewCell
    private let selectionCommand: RACCommand?
    private let dataSource: CocoaTableViewDataSourceAndDelegateCombined
    
    private let sourceSignal: SignalProducer<[T], NoError>
    
    //MARK: Public API
    
    init(tableView: UITableView, sourceSignal: SignalProducer<[T], NoError>, nibName: String, selectionCommand: RACCommand? = nil) {
        self.tableView = tableView
        self.selectionCommand = selectionCommand
        
        let nib = UINib(nibName: nibName, bundle: nil)
        
        // create an instance of the template cell and register with the table view
        templateCell = nib.instantiateWithOwner(nil, options: nil)[0] as! UITableViewCell
        tableView.registerNib(nib, forCellReuseIdentifier: templateCell.reuseIdentifier!)
        
        dataSource = CocoaTableViewDataSourceAndDelegateCombined(data: [AnyObject](), templateCell: templateCell)
        
        self.sourceSignal = sourceSignal
        
        super.init()
    }
    
    func activate() {
        sourceSignal.start(next: {
            data in
            self.dataSource.data = data.map { $0 as AnyObject }
            self.tableView.reloadData()
        })
        
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
    }
    
}