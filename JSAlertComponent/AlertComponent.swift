//
//  AlertComponent.swift
//  JSAlertComponent
//
//  Created by joseewu on 2018/2/25.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import TinyKit

class AlertComponent: Component {
    private final let backgroundComponent:UIItemComponent<BlurBackgroundView>
    private final let footerComponent:UIItemComponent<FooterView>
    private final let listComponent: AlertListComponent!
    
    var contentMode: ComponentContentMode{
        get { return backgroundComponent.contentMode }
        
        set { backgroundComponent.contentMode = newValue }
    }
    
    init(contentMode: ComponentContentMode = .automatic) {
        self.listComponent = AlertListComponent(contentMode: .automatic)
        let bkView = BlurBackgroundView(frame: CGRect(x: 0, y: 0, width: 400, height: 700))
        self.backgroundComponent = UIItemComponent(contentMode: contentMode, itemView: bkView)
        self.backgroundComponent.itemView.addSubview(self.listComponent.view)
        let footerView = FooterView(frame: CGRect.zero)
        self.footerComponent = UIItemComponent(contentMode: contentMode, itemView: footerView)
        self.backgroundComponent.itemView.addSubview(self.footerComponent.itemView)
        setConstraints()
    }
    func render() { listComponent.render() }
    
    func setConstraints() {
        let mainView = self.listComponent.view
        let footer = self.footerComponent.itemView
        let containerView = self.backgroundComponent.itemView
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        footer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: mainView, attribute: .centerX, relatedBy: .equal, toItem: containerView, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: mainView, attribute: .centerY, relatedBy: .equal, toItem: containerView, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: mainView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: mainView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300).isActive = true
        
        NSLayoutConstraint(item: footer, attribute: .top, relatedBy: .equal, toItem: mainView, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: footer, attribute: .width, relatedBy: .equal, toItem: mainView, attribute: .width, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: footer, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40).isActive = true
    }
    public final var view: View { return backgroundComponent.itemView }
    
    var preferredContentSize: CGSize { return backgroundComponent.preferredContentSize }
    

}
extension AlertComponent {
    public func setTitle(_ title:[String]) {
       listComponent.setTitle(title)
    }
}
