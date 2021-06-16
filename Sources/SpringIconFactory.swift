//
// Created by Shaban on 09/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI

class SpringIconFactory {

    func make(icon: SpringIcon,
              backgroundColor: SpringIconColor,
              foregroundColor: SpringIconColor,
              isExpanded: Bool) -> some View {
        Group {
            switch icon {
            case .plus:
                DefaultIconView(systemName: "plus",
                        backgroundColor: backgroundColor,
                        foregroundColor: foregroundColor,
                        isExpanded: isExpanded)
                        .rotationEffect(isExpanded ? .degrees(45) : .degrees(0))
                        .scaleEffect(isExpanded ? 3 : 1)
                        .opacity(isExpanded ? 0.5 : 1)
            case .send:
                DefaultIconView(systemName: "paperplane.fill",
                        backgroundColor: backgroundColor,
                        foregroundColor: foregroundColor,
                        isExpanded: isExpanded)
                        .scaleEffect(isExpanded ? 1.5 : 1)
            case .system(let name):
                DefaultIconView(systemName: name,
                        backgroundColor: backgroundColor,
                        foregroundColor: foregroundColor,
                        isExpanded: isExpanded)
                        .scaleEffect(isExpanded ? 1.5 : 1)
            case .custom(let image):
                image
            }
        }
    }

    private func DefaultIconView(systemName: String,
                                 backgroundColor: SpringIconColor,
                                 foregroundColor: SpringIconColor,
                                 isExpanded: Bool) -> some View {
        Image(systemName: systemName)
                .font(.system(size: 40, weight: isExpanded ? .regular : .semibold, design: .rounded))
                .animation(Animation.spring(response: 0.35, dampingFraction: 0.85, blendDuration: 1))
                .background(isExpanded ? backgroundColor.expanded : backgroundColor.collapsed)
                .foregroundColor(isExpanded ? foregroundColor.expanded : foregroundColor.collapsed)
    }
}
