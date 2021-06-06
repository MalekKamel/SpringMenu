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
            Color.black
                    .edgesIgnoringSafeArea(.all)
            ZStack {
                MenuItems()

                settings.icon
                        .font(.system(size: 40, weight: isAnimating ? .regular : .semibold, design: .rounded))
                        .foregroundColor(isAnimating ? Color.white : Color.black)
                        .rotationEffect(isAnimating ? .degrees(45) : .degrees(0))
                        .scaleEffect(isAnimating ? 3 : 1)
                        .opacity(isAnimating ? 0.5 : 1)
                        .animation(Animation.spring(response: 0.35, dampingFraction: 0.85, blendDuration: 1))
                        .onTapGesture {
                            self.isAnimating.toggle()
                        }
            }.frame(height: 300)
        }
    }

    private func MenuItems() -> some View {
        ForEach(settings.items.items) { item in
            SpringItemView(expand: $isAnimating, item: item, direction: item.direction, settings: settings)
        }
    }
}

struct SpringMenu_Previews: PreviewProvider {
    static var previews: some View {
        let items = EightSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text")),
                item3: SpringItem(icon: Image(systemName: "doc")),
                item4: SpringItem(icon: Image(systemName: "mic.fill")),
                item5: SpringItem(icon: Image(systemName: "mic.fill")),
                item6: SpringItem(icon: Image(systemName: "mic.fill")),
                item7: SpringItem(icon: Image(systemName: "mic.fill")),
                item8: SpringItem(icon: Image(systemName: "mic.fill"))
        )
        let settings = SpringMenuSettings.Builder()
                .icon(Image(systemName: "plus"))
                .items(items: items)
                .build()
        SpringMenu(settings: settings)
    }
}

