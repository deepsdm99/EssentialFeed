//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Deepak on 29/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import UIKit

extension UIButton {
    func simulateTap() {
       simulate(event: .touchUpInside)
    }
}
