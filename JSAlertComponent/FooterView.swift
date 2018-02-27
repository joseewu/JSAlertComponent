//
//  FooterView.swift
//  JSAlertComponent
//
//  Created by joseewu on 2018/2/26.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import UIKit
class FooterView: UIView {
    var conformButton:UIButton = UIButton()
    override init(frame: CGRect) {
        super.init(frame: frame)
        renderUi()
    }
    func renderUi() {
        conformButton.setTitle("確認", for: .normal)
        conformButton.backgroundColor = UIColor.white
        conformButton.setTitleColor(UIColor.blue, for: .normal)
        addSubview(conformButton)
        setConstraints()
    }
    func setConstraints() {
        conformButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: conformButton, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: conformButton, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: -10).isActive = true
        NSLayoutConstraint(item: conformButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
