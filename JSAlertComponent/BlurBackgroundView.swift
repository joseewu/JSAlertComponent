//
//  BlurBackgroundView.swift
//  JSAlertComponent
//
//  Created by joseewu on 2018/2/26.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import UIKit

class BlurBackgroundView: UIView {
    var blurEffectView:UIVisualEffectView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        renderUi()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func renderUi() {
        self.backgroundColor = .clear
        blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .extraLight))
        blurEffectView.frame = self.bounds
        addSubview(blurEffectView)
    }
}
