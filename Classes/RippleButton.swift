//
//  RippleButton.swift
//  RippleButton
//
//  Created by 奥村晋太郎 on 2018/02/16.
//  Copyright © 2018年 奥村晋太郎. All rights reserved.
//

import Foundation

open class RippleButton: UIButton {

    public enum animationsType: String {
        case bound
        case pop
        case ripple
    }

    fileprivate var selectedAnimationType : animationsType!

    open var selectAnimationType: animationsType = .bound {
        didSet {
            selectedAnimationType = selectAnimationType
        }
    }

    fileprivate func startAnimation(using animationsType: animationsType) {
        switch animationsType {
        case .bound:
            showAnimation.shared.bound(using: self)
        case .pop:
            showAnimation.shared.pop(using: self)
        case .ripple:
            showAnimation.shared.ripple(using: self)
        }
    }

    open func select() {
        isSelected = true
        startAnimation(using: selectedAnimationType)
    }
    open func deselect() {
        isSelected = false
    }

}
