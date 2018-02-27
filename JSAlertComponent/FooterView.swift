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
    var cancelButton:UIButton = UIButton()
    override init(frame: CGRect) {
        super.init(frame: frame)
        renderUi()
    }
    func renderUi() {
        backgroundColor = UIColor.darkGray
        conformButton.setTitle("確認", for: .normal)
        conformButton.titleLabel?.textAlignment = .center
        conformButton.backgroundColor = UIColor.white
        conformButton.setTitleColor(UIColor.blue, for: .normal)
        addSubview(conformButton)
        
        cancelButton.setTitle("取消", for: .normal)
        cancelButton.backgroundColor = UIColor.white
        cancelButton.titleLabel?.textAlignment = .center
        cancelButton.setTitleColor(UIColor.blue, for: .normal)
        addSubview(cancelButton)
        
        setConstraints()
    }
    func setConstraints() {
        conformButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: conformButton, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: conformButton, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: conformButton, attribute: .left, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: cancelButton, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: cancelButton, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: cancelButton, attribute: .right, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
