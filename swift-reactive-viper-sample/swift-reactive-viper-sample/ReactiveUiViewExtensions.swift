//
//  ReactiveUiViewExtensions.swift
//  swift-reactive-viper-sample
//
//  Created by Justin Shin on 8/21/15.
//  Copyright © 2015 EmergingMed. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa

//lazyMutableProperty(<#T##host: AnyObject##AnyObject#>, <#T##key: UnsafePointer<Void>##UnsafePointer<Void>#>, setter: <#T##T -> ()#>, getter: <#T##() -> T#>)
//
//extension UIView {
//    public var rac_alpha: MutableProperty<CGFloat> {
//        return lazyMutableProperty(
//            self,
//            key: &AssociationKey.alpha,
//            { self.alpha = $0 },
//            { self.alpha  }
//        )
//    }
//    
//    public var rac_hidden: MutableProperty<Bool> {
//        return lazyMutableProperty(self, &AssociationKey.hidden, { self.hidden = $0 }, { self.hidden  })
//    }
//}