//
// Created by Shaban on 06/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI

public enum SpringIcon {
    case plus
    case send
    case system(name: String)
    case custom(image: Image)
}

public struct SpringIconColor {
    let collapsed: Color
    let expanded: Color

    public init(collapsed: Color, expanded: Color) {
        self.collapsed = collapsed
        self.expanded = expanded
    }
}