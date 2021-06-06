//
// Created by Shaban on 05/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI


struct SpringItems {
    let items: [SpringItem]
}

extension SpringItems {
    static func from(_ input: TwoSpringItems, position: TwoSpringItems.Position) -> SpringItems {
        var items = input
        let array: [SpringItem]
        switch position {
        case .top:
            array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .topRight),
                     SpringItem.placeholder(direction: .bottomLeft),
                     SpringItem.placeholder(direction: .bottomRight)]
        case .bottom:
            array = [items.item1.with(direction: .bottomLeft),
                     items.item2.with(direction: .bottomRight),
                     SpringItem.placeholder(direction: .topLeft),
                     SpringItem.placeholder(direction: .topRight)]
        case .horizontal:
            array = [items.item1.with(direction: .leading),
                     items.item2.with(direction: .trailing),
                     SpringItem.placeholder(direction: .top),
                     SpringItem.placeholder(direction: .bottom)]
        case .vertical:
            array = [items.item1.with(direction: .top),
                     items.item2.with(direction: .bottom),
                     SpringItem.placeholder(direction: .leading),
                     SpringItem.placeholder(direction: .trailing)]
        }
        return SpringItems(items: array)
    }
}

extension SpringItems {
    static func from(_ input: ThreeSpringItems, position: ThreeSpringItems.Position) -> SpringItems {
        var items = input
        let array: [SpringItem]
        switch position {
        case .top:
            array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .top),
                     items.item3.with(direction: .topRight),
                     SpringItem.placeholder(direction: .bottom),
                     SpringItem.placeholder(direction: .bottomLeft),
                     SpringItem.placeholder(direction: .bottomRight),
            ]
        case .bottom:
            array = [items.item1.with(direction: .bottomLeft),
                     items.item2.with(direction: .bottom),
                     items.item3.with(direction: .bottomRight),
                     SpringItem.placeholder(direction: .top),
                     SpringItem.placeholder(direction: .topLeft),
                     SpringItem.placeholder(direction: .topRight)
            ]
        case .leading:
            array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .leading),
                     items.item3.with(direction: .bottomLeft),
                     SpringItem.placeholder(direction: .trailing),
                     SpringItem.placeholder(direction: .topRight),
                     SpringItem.placeholder(direction: .bottomRight)]
        case .trailing:
            array = [items.item1.with(direction: .topRight),
                     items.item2.with(direction: .trailing),
                     items.item3.with(direction: .bottomRight),
                     SpringItem.placeholder(direction: .leading),
                     SpringItem.placeholder(direction: .bottomLeft),
                     SpringItem.placeholder(direction: .topLeft)]
        }
        return SpringItems(items: array)
    }
}

extension SpringItems {
    static func from(_ input: FourSpringItems) -> SpringItems {
        var items = input
        let array: [SpringItem]
        array = [items.item1.with(direction: .leading),
                 items.item2.with(direction: .top),
                 items.item3.with(direction: .trailing),
                 items.item4.with(direction: .bottom)]
        return SpringItems(items: array)
    }
}

extension SpringItems {
    static func from(_ input: FiveSpringItems, gravity: FiveSpringItems.Gravity) -> SpringItems {
        var items = input
        let array: [SpringItem]
        switch gravity {
        case .top:
            array = [items.item1.with(direction: .leading),
                     items.item2.with(direction: .topLeft),
                     items.item3.with(direction: .top),
                     items.item4.with(direction: .topRight),
                     items.item5.with(direction: .trailing),
                     SpringItem.placeholder(direction: .bottom),
                     SpringItem.placeholder(direction: .bottomLeft),
                     SpringItem.placeholder(direction: .bottomRight)
            ]
        case .bottom:
            array = [items.item1.with(direction: .leading),
                     items.item2.with(direction: .bottomLeft),
                     items.item3.with(direction: .bottom),
                     items.item4.with(direction: .bottomRight),
                     items.item5.with(direction: .trailing),
                     SpringItem.placeholder(direction: .top),
                     SpringItem.placeholder(direction: .topLeft),
                     SpringItem.placeholder(direction: .topRight)
            ]
        case .leading:
            array = [items.item1.with(direction: .top),
                     items.item2.with(direction: .topLeft),
                     items.item3.with(direction: .leading),
                     items.item4.with(direction: .bottomLeft),
                     items.item5.with(direction: .bottom),
                     SpringItem.placeholder(direction: .trailing),
                     SpringItem.placeholder(direction: .topRight),
                     SpringItem.placeholder(direction: .bottomRight)
            ]
        case .trailing:
            array = [items.item1.with(direction: .bottom),
                     items.item2.with(direction: .bottomRight),
                     items.item3.with(direction: .trailing),
                     items.item4.with(direction: .topRight),
                     items.item5.with(direction: .top),
                     SpringItem.placeholder(direction: .leading),
                     SpringItem.placeholder(direction: .topLeft),
                     SpringItem.placeholder(direction: .bottomLeft)
            ]
        }
        return SpringItems(items: array)
    }
}

extension SpringItems {
    static func from(_ input: SixSpringItems, position: SixSpringItems.Position) -> SpringItems {
        var items = input
        let array: [SpringItem]
        switch position {
        case .vertical:
            array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .leading),
                     items.item3.with(direction: .bottomLeft),
                     items.item4.with(direction: .topRight),
                     items.item5.with(direction: .trailing),
                     items.item6.with(direction: .bottomRight),
                     SpringItem.placeholder(direction: .top),
                     SpringItem.placeholder(direction: .bottom)]
        case .horizontal:
            array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .top),
                     items.item3.with(direction: .topRight),
                     items.item4.with(direction: .bottomLeft),
                     items.item5.with(direction: .bottom),
                     items.item6.with(direction: .bottomRight),
                     SpringItem.placeholder(direction: .leading),
                     SpringItem.placeholder(direction: .trailing)]
        }
        return SpringItems(items: array)
    }
}

extension SpringItems {
    static func from(_ input: SevenSpringItems, gravity: SevenSpringItems.Gravity) -> SpringItems {
        var items = input
        let array: [SpringItem]
        switch gravity {
        case .top:
            array = [items.item1.with(direction: .bottomLeft),
                     items.item2.with(direction: .leading),
                     items.item3.with(direction: .topLeft),
                     items.item4.with(direction: .top),
                     items.item5.with(direction: .topRight),
                     items.item6.with(direction: .trailing),
                     items.item7.with(direction: .bottomRight),
                     SpringItem.placeholder(direction: .bottom)]
        case .bottom:
            array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .leading),
                     items.item3.with(direction: .bottomLeft),
                     items.item4.with(direction: .bottom),
                     items.item5.with(direction: .bottomRight),
                     items.item6.with(direction: .trailing),
                     items.item7.with(direction: .topRight),
                     SpringItem.placeholder(direction: .top)]
        case .leading:
            array = [items.item1.with(direction: .topRight),
                     items.item2.with(direction: .top),
                     items.item3.with(direction: .topLeft),
                     items.item4.with(direction: .leading),
                     items.item5.with(direction: .bottomLeft),
                     items.item6.with(direction: .bottom),
                     items.item7.with(direction: .bottomRight),
                     SpringItem.placeholder(direction: .trailing)]
        case .trailing:
            array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .top),
                     items.item3.with(direction: .topRight),
                     items.item4.with(direction: .trailing),
                     items.item5.with(direction: .bottomRight),
                     items.item6.with(direction: .bottom),
                     items.item7.with(direction: .bottomLeft),
                     SpringItem.placeholder(direction: .leading)]
        }
        return SpringItems(items: array)
    }
}

extension SpringItems {
    static func from(_ input: EightSpringItems) -> SpringItems {
        var items = input
        let array = [items.item1.with(direction: .topLeft),
                     items.item2.with(direction: .top),
                     items.item3.with(direction: .topRight),
                     items.item4.with(direction: .trailing),
                     items.item5.with(direction: .bottomRight),
                     items.item6.with(direction: .bottom),
                     items.item7.with(direction: .bottomLeft),
                     items.item8.with(direction: .leading)]
        return SpringItems(items: array)
    }
}
