//
//  UIListComponent.swift
//  TinyKit
//
//  Created by Roy Hsu on 17/02/2018.
//  Copyright © 2018 TinyWorld. All rights reserved.
//

// MARK: - UIListComponent

public final class UIListComponent: ListComponent {

    public final var headerComponent: Component?

    public final var footerComponent: Component?

    public final var itemComponents: ListItemComponents? {

        get { return bridge.itemComponents }

        set { bridge.itemComponents = newValue }

    }

    internal final let tableView = UITableView(frame: UIScreen.main.bounds)

    private final let bridge: UITableViewListComponentBridge

    public init(contentMode: ComponentContentMode = .automatic) {

        self.contentMode = contentMode

        self.bridge = UITableViewListComponentBridge(tableView: tableView)

    }

    // MAKR: Component

    public final var contentMode: ComponentContentMode

    public final func render() {

        headerComponent?.render()

        footerComponent?.render()

        tableView.tableHeaderView = headerComponent?.view

        tableView.tableFooterView = footerComponent?.view

        tableView.reloadData()

        tableView.layoutIfNeeded()

        let size: CGSize

        switch contentMode {

        case .size(let width, let height):

            size = CGSize(
                width: width,
                height: height
            )

        case .automatic:

            size = tableView.contentSize

        }

        tableView.frame.size = size

    }

    // MARK: ViewRenderable

    public final var view: View { return tableView }

    public final var preferredContentSize: CGSize { return tableView.bounds.size }

}
