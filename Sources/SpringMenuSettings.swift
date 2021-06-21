//
// Created by Shaban on 06/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI

public class SpringMenuSettings {
    public var backgroundColor: Color? = nil
    public var icon: SpringIcon = .plus
    public var iconForegroundColor: SpringIconColor = SpringIconColor(collapsed: .clear, expanded: .clear)
    public var iconBackgroundColor: SpringIconColor = SpringIconColor(collapsed: .clear, expanded: .clear)
    var items: SpringItems = SpringItems(items: [])
    public var hasPlaceholderItemsAnimation: Bool = true

    public init() {
    }

    public class Builder {
        let settings = SpringMenuSettings()

        public init() {

        }

        public func backgroundColor(_ value: Color) -> Builder {
            settings.backgroundColor = value
            return self
        }

        public func icon(_ icon: SpringIcon,
                         backgroundColor: SpringIconColor,
                         foreGroundColor: SpringIconColor
                         ) -> Builder {
            settings.icon = icon
            settings.iconBackgroundColor = backgroundColor
            settings.iconForegroundColor = foreGroundColor
            return self
        }

        public func withPlaceholderItemsAnimation(_ value: Bool) -> Builder {
            settings.hasPlaceholderItemsAnimation = value
            return self
        }

        public func items(items: TwoSpringItems, position: TwoSpringItems.Position) -> Builder {
            settings.items = SpringItems.from(items, position: position)
            return self
        }

        public func items(items: ThreeSpringItems, position: ThreeSpringItems.Position) -> Builder {
            settings.items = SpringItems.from(items, position: position)
            return self
        }

        public func items(items: FourSpringItems) -> Builder {
            settings.items = SpringItems.from(items)
            return self
        }

        public func items(items: FiveSpringItems, gravity: FiveSpringItems.Gravity) -> Builder {
            settings.items = SpringItems.from(items, gravity: gravity)
            return self
        }

        public func items(items: SixSpringItems, position: SixSpringItems.Position) -> Builder {
            settings.items = SpringItems.from(items, position: position)
            return self
        }

        public func items(items: SevenSpringItems, gravity: SevenSpringItems.Gravity) -> Builder {
            settings.items = SpringItems.from(items, gravity: gravity)
            return self
        }

        public func items(items: EightSpringItems) -> Builder {
            settings.items = SpringItems.from(items)
            return self
        }

        public func build() -> SpringMenuSettings {
            settings
        }
    }
}
