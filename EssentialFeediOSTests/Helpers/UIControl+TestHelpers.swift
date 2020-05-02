//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Deepak on 29/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
