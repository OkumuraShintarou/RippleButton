//
//  ViewController.swift
//  DemoRippleButton
//
//  Created by 奥村晋太郎 on 2018/02/16.
//  Copyright © 2018年 奥村晋太郎. All rights reserved.
//

import UIKit
import RippleButton

final class ViewController: UIViewController {

    @IBOutlet fileprivate weak var rippleButton: RippleButton!
    @IBOutlet fileprivate weak var boundButton: RippleButton!
    @IBOutlet fileprivate weak var popButton: RippleButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(rippleButton)
        view.addSubview(boundButton)
        view.addSubview(popButton)
        view.addSubview(slowRippleButton)

        rippleButton.selectAnimationType = .ripple
        boundButton.selectAnimationType  = .bound
        popButton.selectAnimationType    = .pop


        rippleButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        boundButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        popButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: RippleButton) {
        if sender.isSelected {
            sender.deselect()
        } else {
            sender.select()
            print("tapped")
        }
    }

}

