//
//  UIAlertlContent.swift
//  JSAlertComponent
//
//  Created by joseewu on 2018/2/19.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import UIKit

class UIAlertlContent: UIView {
    var title:UILabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        title.textAlignment = .left
        title.textColor = UIColor.black
        addSubview(title)
        setConstraint()
    }
    // MARK: autolayout
    func setConstraint(){
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: title, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: title, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 10).isActive = true
        NSLayoutConstraint(item: title, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: title, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
         NSLayoutConstraint(item: title, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
