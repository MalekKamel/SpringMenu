//
// Created by Shaban on 04/06/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI

public struct SpringMenu: View {
    @State var isAnimating: Bool = false
    let settings: SpringMenuSettings

    public init(settings: SpringMenuSettings) {
        self.settings = settings
    }

    public var body: some View {
        ZStack {
            settings.backgroundColor
            ZStack {
                ItemsView()
                IconView()
            }
        }
    }

    private func ItemsView() -> some View {
        ForEach(settings.items.items) { item in
            SpringItemView(expand: $isAnimating, item: item, direction: item.direction, settings: settings)
        }
    }

    private func IconView() -> some View {
        SpringIconFactory().make(
                        icon: settings.icon,
                        backgroundColor: settings.iconBackgroundColor,
                        foregroundColor: settings.iconForegroundColor,
                        isExpanded: isAnimating)
                .onTapGesture {
                    isAnimating.toggle()
                }
    }

}

struct SpringMenu_Previews: PreviewProvider {
    static var previews: some View {
        let items = EightSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .foregroundColor(.blue)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .foregroundColor(.blue)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .foregroundColor(.blue)
                        .build(),
                item4: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .foregroundColor(.blue)
                        .build(),
                item5: SpringItem.Builder()
                        .icon(Image(systemName: "pencil.circle"))
                        .foregroundColor(.blue)
                        .build(),
                item6: SpringItem.Builder()
                        .icon(Image(systemName: "folder"))
                        .foregroundColor(.blue)
                        .build(),
                item7: SpringItem.Builder()
                        .icon(Image(systemName: "square.and.arrow.up"))
                        .foregroundColor(.blue)
                        .build(),
                item8: SpringItem.Builder()
                        .icon(Image(systemName: "arrowshape.turn.up.forward"))
                        .foregroundColor(.blue)
                        .build()
        )
        let settings = SpringMenuSettings.Builder()
                .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .clear),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                .items(items: items)
                .backgroundColor(.blue)
                .build()
        SpringMenu(settings: settings)
    }
}

