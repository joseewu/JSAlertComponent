//
//  ChoiceItemComponent.swift
//  JSAlertComponent
//
//  Created by joseewu on 2018/2/25.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import TinyKit

class ChoiceItemComponent: Component {
    var contentMode: ComponentContentMode {
        get { return itemComponent.contentMode }
        set { itemComponent.contentMode = newValue }
    }
    private final let itemComponent: UIItemComponent<UIAlertlContent>
    public init(contentMode: ComponentContentMode = .automatic) {
        
        self.itemComponent = UIItemComponent(
            contentMode: contentMode,
            itemView: UIAlertlContent())
    }
    func render() {
        itemComponent.render()
    }
    
    var view: View {
        return itemComponent.view
    }
    
    var preferredContentSize: CGSize {
        return itemComponent.preferredContentSize
    }
    
    
}
extension ChoiceItemComponent {
    public func setTitle(_ title:String) {
        let itemView = itemComponent.itemView
        itemView.title.text = title
    }
}
