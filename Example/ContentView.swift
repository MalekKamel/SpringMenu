//
// Created by Shaban on 25/05/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI
import SpringMenu

struct ContentView: View {
    @State var isSaveDisabled = true

    var body: some View {
        ScrollView {
            Two()
            Three()
            Four()
            Five()
            Six()
            Seven()
            Eight()
        }
    }

    private func Two() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.two(), position: .top)
                    .withPlaceholderIconsAnimation(false)
                    .build()
            SpringMenu(settings: settings1)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.two(), position: .bottom)
                    .build()
            SpringMenu(settings: settings2)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.two(), position: .vertical)
                    .build()
            SpringMenu(settings: settings3)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.two(), position: .horizontal)
                    .build()
            SpringMenu(settings: settings4)
        }
    }

    private func Three() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.three(), position: .top)
                    .withPlaceholderIconsAnimation(false)
                    .build()
            SpringMenu(settings: settings1)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.three(), position: .bottom)
                    .withPlaceholderIconsAnimation(false)
                    .build()
            SpringMenu(settings: settings2)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.three(), position: .leading)
                    .build()
            SpringMenu(settings: settings3)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.three(), position: .trailing)
                    .build()
            SpringMenu(settings: settings4)
        }
    }

    private func Four() -> some View {
        let settings = SpringMenuSettings.Builder()
                .icon(Image(systemName: "plus"))
                .items(items: SpringMenuPreview.four())
                .build()
        return SpringMenu(settings: settings)
    }

    private func Five() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.five(), gravity: .top)
                    .build()
            SpringMenu(settings: settings1)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.five(), gravity: .bottom)
                    .build()
            SpringMenu(settings: settings2)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.five(), gravity: .leading)
                    .build()
            SpringMenu(settings: settings3)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.five(), gravity: .trailing)
                    .build()
            SpringMenu(settings: settings4)
        }
    }

    private func Six() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.six(), position: .vertical)
                    .build()
            SpringMenu(settings: settings1)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.six(), position: .horizontal)
                    .build()
            SpringMenu(settings: settings2)
        }
    }

    private func Seven() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.seven(), gravity: .top)
                    .build()
            SpringMenu(settings: settings1)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.seven(), gravity: .bottom)
                    .build()
            SpringMenu(settings: settings2)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.seven(), gravity: .leading)
                    .build()
            SpringMenu(settings: settings3)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(Image(systemName: "plus"))
                    .items(items: SpringMenuPreview.seven(), gravity: .trailing)
                    .build()
            SpringMenu(settings: settings4)
        }
    }

    private func Eight() -> some View {
        let settings = SpringMenuSettings.Builder()
                .icon(Image(systemName: "plus"))
                .items(items: SpringMenuPreview.eight())
                .build()
        return SpringMenu(settings: settings)
    }
}

class SpringMenuPreview {

    static func two() -> TwoSpringItems {
        TwoSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text"))
        )
    }

    static func three() -> ThreeSpringItems {
        ThreeSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text")),
                item3: SpringItem(icon: Image(systemName: "doc"))
        )
    }

    static func four() -> FourSpringItems {
        FourSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text")),
                item3: SpringItem(icon: Image(systemName: "doc")),
                item4: SpringItem(icon: Image(systemName: "mic.fill"))
        )
    }

    static func five() -> FiveSpringItems {
        FiveSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text")),
                item3: SpringItem(icon: Image(systemName: "doc")),
                item4: SpringItem(icon: Image(systemName: "mic.fill")),
                item5: SpringItem(icon: Image(systemName: "mic.fill"))
        )
    }

    static func six() -> SixSpringItems {
        SixSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text")),
                item3: SpringItem(icon: Image(systemName: "doc")),
                item4: SpringItem(icon: Image(systemName: "mic.fill")),
                item5: SpringItem(icon: Image(systemName: "mic.fill")),
                item6: SpringItem(icon: Image(systemName: "mic.fill"))
        )
    }

    static func seven() -> SevenSpringItems {
        SevenSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text")),
                item3: SpringItem(icon: Image(systemName: "doc")),
                item4: SpringItem(icon: Image(systemName: "mic.fill")),
                item5: SpringItem(icon: Image(systemName: "mic.fill")),
                item6: SpringItem(icon: Image(systemName: "mic.fill")),
                item7: SpringItem(icon: Image(systemName: "mic.fill"))
        )
    }

    static func eight() -> EightSpringItems {
        EightSpringItems(
                item1: SpringItem(icon: Image(systemName: "photo")),
                item2: SpringItem(icon: Image(systemName: "note.text")),
                item3: SpringItem(icon: Image(systemName: "doc")),
                item4: SpringItem(icon: Image(systemName: "mic.fill")),
                item5: SpringItem(icon: Image(systemName: "mic.fill")),
                item6: SpringItem(icon: Image(systemName: "mic.fill")),
                item7: SpringItem(icon: Image(systemName: "mic.fill")),
                item8: SpringItem(icon: Image(systemName: "mic.fill"))
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
