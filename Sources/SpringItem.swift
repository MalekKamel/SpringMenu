//
// Created by Shaban on 05/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI

public struct SpringItem: Identifiable {
    public let id = UUID()
    let icon: Image?
    var backgroundColor: Color? = .white
    var foregroundColor: Color? = .white
    var direction: SpringItemDirection = .top
    var isPlaceholder: Bool = false
    var onTap: (() -> Void)? = nil

    public init(icon: Image?,
                backgroundColor: Color?,
                foregroundColor: Color?,
                onTap: (() -> Void)?) {
        self.icon = icon
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.onTap = onTap
    }

    init(icon: Image,
         backgroundColor: Color = .white,
         foregroundColor: Color,
         direction: SpringItemDirection,
         isPlaceholder: Bool = false,
         onTap: (() -> Void)?) {
        self.icon = icon
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.direction = direction
        self.isPlaceholder = isPlaceholder
        self.onTap = onTap
    }

    mutating func with(direction: SpringItemDirection) -> SpringItem {
        self.direction = direction
        return self
    }

    static func placeholder(direction: SpringItemDirection) -> SpringItem {
        SpringItem(
                icon: Image(systemName: ""),
                foregroundColor: .clear,
                direction: direction,
                isPlaceholder: true,
                onTap: nil)
    }
}

public extension SpringItem {

    class Builder {
        private var iconImage: Image? = nil
        private var background: Color? = .white
        private var foreground: Color? = .white
        private var onTap: (() -> Void)? = nil

        public init() {
        }

        public func icon(_ value: Image?) -> Builder {
            iconImage = value
            return self
        }

        public func backgroundColor(_ value: Color?) -> Builder {
            background = value
            return self
        }

        public func foregroundColor(_ value: Color?) -> Builder {
            foreground = value
            return self
        }

        public func onTap(_ value: (() -> Void)?) -> Builder {
            onTap = value
            return self
        }

        public func build() -> SpringItem {
            SpringItem(
                    icon: iconImage,
                    backgroundColor: background,
                    foregroundColor: foreground,
                    onTap: onTap
            )
        }
    }
}

public struct TwoSpringItems {
    public var item1: SpringItem
    public var item2: SpringItem

    public init(item1: SpringItem, item2: SpringItem) {
        self.item1 = item1
        self.item2 = item2
    }

    public enum Position {
        case top
        case bottom
        case vertical
        case horizontal
    }
}

public struct ThreeSpringItems {
    public var item1: SpringItem
    public var item2: SpringItem
    public var item3: SpringItem

    public init(item1: SpringItem,
                item2: SpringItem,
                item3: SpringItem) {
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
    }

    public enum Position {
        case top
        case bottom
        case leading
        case trailing
    }
}

public struct FourSpringItems {
    public var item1: SpringItem
    public var item2: SpringItem
    public var item3: SpringItem
    public var item4: SpringItem

    public init(item1: SpringItem,
                item2: SpringItem,
                item3: SpringItem,
                item4: SpringItem) {
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
        self.item4 = item4
    }
}

public struct FiveSpringItems {
    public var item1: SpringItem
    public var item2: SpringItem
    public var item3: SpringItem
    public var item4: SpringItem
    public var item5: SpringItem

    public init(item1: SpringItem,
                item2: SpringItem,
                item3: SpringItem,
                item4: SpringItem,
                item5: SpringItem) {
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
        self.item4 = item4
        self.item5 = item5
    }

    public enum Gravity {
        case top
        case bottom
        case leading
        case trailing
    }
}

public struct SixSpringItems {
    public var item1: SpringItem
    public var item2: SpringItem
    public var item3: SpringItem
    public var item4: SpringItem
    public var item5: SpringItem
    public var item6: SpringItem

    public init(item1: SpringItem,
                item2: SpringItem,
                item3: SpringItem,
                item4: SpringItem,
                item5: SpringItem,
                item6: SpringItem) {
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
        self.item4 = item4
        self.item5 = item5
        self.item6 = item6
    }

    public enum Position {
        case vertical
        case horizontal
    }
}

public struct SevenSpringItems {
    public var item1: SpringItem
    public var item2: SpringItem
    public var item3: SpringItem
    public var item4: SpringItem
    public var item5: SpringItem
    public var item6: SpringItem
    public var item7: SpringItem

    public init(item1: SpringItem,
                item2: SpringItem,
                item3: SpringItem,
                item4: SpringItem,
                item5: SpringItem,
                item6: SpringItem,
                item7: SpringItem) {
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
        self.item4 = item4
        self.item5 = item5
        self.item6 = item6
        self.item7 = item7
    }

    public enum Gravity {
        case top
        case bottom
        case leading
        case trailing
    }
}

public struct EightSpringItems {
    public var item1: SpringItem
    public var item2: SpringItem
    public var item3: SpringItem
    public var item4: SpringItem
    public var item5: SpringItem
    public var item6: SpringItem
    public var item7: SpringItem
    public var item8: SpringItem

    public init(item1: SpringItem,
                item2: SpringItem,
                item3: SpringItem,
                item4: SpringItem,
                item5: SpringItem,
                item6: SpringItem,
                item7: SpringItem,
                item8: SpringItem) {
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
        self.item4 = item4
        self.item5 = item5
        self.item6 = item6
        self.item7 = item7
        self.item8 = item8
    }
}
