//
// Created by Shaban on 04/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI

public enum SpringItemDirection {
    case bottom
    case leading
    case trailing
    case top
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight

    var offsets: (x: CGFloat, y: CGFloat) {
        switch self {
        case .top:
            // (-50, -80)
            return (-32, -62)
        case .bottom:
            // (50, 80)
            return (32, 62)
        case .leading:
            // (-80, 50)
            return (-62, 32)
        case .trailing:
            // (80, -50)
            return (62, -32)

        case .topLeft:
            // (-110, 20)
            return (-94, -4)
        case .topRight:
            // (20, -110)
            return (4, -94)
        case .bottomLeft:
            // (-20, -110)
            return (-4, 94)
        case .bottomRight:
            // (110, 20)
            return (94, 4)
        }
    }

    var containerOffset: (x: CGFloat, y: CGFloat) {
        switch self {
        case .top:
            return (-18, -18)
        case .bottom:
            return (18, 18)
        case .leading:
            return (-18, 18)
        case .trailing:
            return (18, -18)

        case .topLeft:
            return (-18, -18)
        case .topRight:
            return (18, -18)
        case .bottomLeft:
            return (-18, 18)
        case .bottomRight:
            return (18, 18)
        }
    }
}
