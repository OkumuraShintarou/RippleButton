//
//  showAnimation.swift
//  RippleButton
//
//  Created by 奥村晋太郎 on 2018/02/16.
//  Copyright © 2018年 奥村晋太郎. All rights reserved.
//

import Foundation

final class showAnimation: RippleButton {

    static let shared = showAnimation()

    func flash(button: RippleButton) {
        UIView.animate(withDuration: 0.2, animations: {
            button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            button.alpha = 1.0
        }, completion: { _ in
            UIView.animate(withDuration: 0.1, animations: {
                button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                button.alpha = 0.9
            }, completion: { _ in
                UIView.animate(withDuration: 0.05, animations: {
                    button.transform = CGAffineTransform(scaleX: 4.0, y: 4.0)
                    button.alpha = 0.8
                }, completion: { _ in
                    UIView.animate(withDuration: 0.025, animations: {
                        button.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
                        button.alpha = 0.7
                    }, completion: { _ in
                        UIView.animate(withDuration: 0.014, animations: {
                            button.transform = CGAffineTransform(scaleX: 16.0, y: 16.0)
                            button.alpha = 0.6
                        }, completion: { _ in
                            UIView.animate(withDuration: 0.007, animations: {
                                button.transform = CGAffineTransform(scaleX: 32.0, y: 32.0)
                                button.alpha = 0.5
                            }, completion: { _ in
                                UIView.animate(withDuration: 0.004, animations: {
                                    button.transform = CGAffineTransform(scaleX: 64.0, y: 64.0)
                                    button.alpha = 0.4
                                }, completion: { _ in
                                    UIView.animate(withDuration: 0.002, animations: {
                                        button.transform = CGAffineTransform(scaleX: 128.0, y: 128.0)
                                        button.alpha = 0.3
                                    }, completion: { _ in
                                        UIView.animate(withDuration: 0.001, animations: {
                                            button.transform = CGAffineTransform(scaleX: 256.0, y: 256.0)
                                            button.alpha = 0.2
                                        }, completion: { _ in
                                            UIView.animate(withDuration: 0.001, animations: {
                                                button.transform = CGAffineTransform(scaleX: 512.0, y: 521.0)
                                                button.alpha = 0.1
                                            }, completion: { _ in
                                                UIView.animate(withDuration: 0,
                                                               delay: 0.0,
                                                               usingSpringWithDamping: 0.2,
                                                               initialSpringVelocity: 0.2,
                                                               options: .curveEaseIn,
                                                               animations: { () -> Void in
                                                                button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                                                button.alpha = 1.0
                                                }, completion: { _ in
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
    }

    func bound(button: RippleButton) {
        UIView.animate(withDuration: 0.2, animations: {
            button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }, completion: { _ in
            UIView.animate(withDuration: 0.2, animations: {
                button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: { _ in
                UIView.animate(withDuration: 0.2, animations: {
                    button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                }, completion: { _ in
                    UIView.animate(withDuration: 0.2, animations: {
                        button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    }, completion: { _ in
                        UIView.animate(withDuration: 0.5, // アニメーションにかかる時間
                            delay: 0.0, // アニメーションを遅らせる時間
                            usingSpringWithDamping: 0.5, // アニメーションが終わった後のバウンドにかける時間
                            initialSpringVelocity: 8, // アニメーションのバウンドの速さ
                            options: .curveEaseIn,
                            animations: { () -> Void in
                                button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                        }, completion: { _ in

                        })
                    })
                })
            })
        })
    }

    func pop(button: RippleButton) {
        UIView.animate(withDuration: 0.2, animations: {
            button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }, completion: { _ in
            UIView.animate(withDuration: 0.2, animations: {
                button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: { _ in
                UIView.animate(withDuration: 0.5,
                               delay: 0.0,
                               usingSpringWithDamping: 0.3,
                               initialSpringVelocity: 8,
                               options: .curveEaseOut,
                               animations: { () -> Void in
                                button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                }, completion: { _ in
                })
            })
        })
    }

}
