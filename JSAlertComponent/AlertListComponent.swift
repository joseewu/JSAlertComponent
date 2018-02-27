//
//  AlertListComponent.swift
//  JSAlertComponent
//
//  Created by joseewu on 2018/2/25.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import TinyKit

class AlertListComponent: Component {
    
    private final let listComponent: UIListComponent!
    
    var contentMode: ComponentContentMode{
        get { return listComponent.contentMode }
        
        set { listComponent.contentMode = newValue }
    }
    
    init(contentMode: ComponentContentMode = .automatic) {
        self.listComponent = UIListComponent(contentMode: contentMode)
        self.listComponent.view.backgroundColor = UIColor.darkGray
        self.listComponent.view.layer.cornerRadius = 10
    }
    
    func render() { listComponent.render() }
    
    public final var view: View { return listComponent.view }
    
    var preferredContentSize: CGSize { return listComponent.preferredContentSize }
}
extension AlertListComponent {
    public func setTitle(_ title:[String]) {
        let components:[Component] = title.map { (title)  in
            let component = ChoiceItemComponent()
            component.setTitle(title)
            return component
        }
        listComponent.itemComponents = AnyCollection(components)
    }
}
