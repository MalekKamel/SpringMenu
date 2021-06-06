//
// Created by Shaban on 06/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI

public class SpringMenuSettings {
    public var icon: Image? = nil
    var items: SpringItems = SpringItems(items: [])
    public var hasPlaceholderItemsAnimation: Bool = true

    public init() {
    }

    public class Builder {
        let settings = SpringMenuSettings()

        public init() {

        }

        public func icon(_ value: Image) -> Builder {
            settings.icon = value
            return self
        }

        public func withPlaceholderIconsAnimation(_ value: Bool) -> Builder {
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
