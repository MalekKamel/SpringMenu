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
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.two(), position: .top)
                    .withPlaceholderIconsAnimation(false)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.two(), position: .bottom)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.two(), position: .vertical)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.two(), position: .horizontal)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Three() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.three(), position: .top)
                    .withPlaceholderIconsAnimation(false)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.three(), position: .bottom)
                    .withPlaceholderIconsAnimation(false)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.three(), position: .leading)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.three(), position: .trailing)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Four() -> some View {
        let settings = SpringMenuSettings.Builder()
                .icon(.plus,
                        backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                        foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                .items(items: SpringMenuPreview.four())
                .backgroundColor(.black)
                .build()
        return SpringMenu(settings: settings)
                .frame(height: 300)
    }

    private func Five() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.five(), gravity: .top)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.five(), gravity: .bottom)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.five(), gravity: .leading)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.five(), gravity: .trailing)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Six() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.six(), position: .vertical)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.six(), position: .horizontal)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)
        }
    }

    private func Seven() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.seven(), gravity: .top)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.seven(), gravity: .bottom)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.seven(), gravity: .leading)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .white, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .black, expanded: .white))
                    .items(items: SpringMenuPreview.seven(), gravity: .trailing)
                    .backgroundColor(.black)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Eight() -> some View {
        let settings = SpringMenuSettings.Builder()
                .icon(
                        .send,
                        backgroundColor: SpringIconColor(collapsed: .black, expanded: .clear),
                        foreGroundColor: SpringIconColor(collapsed: .white, expanded: .black))
                .items(items: SpringMenuPreview.eight())
                .backgroundColor(.white)
                .build()
        return SpringMenu(settings: settings)
                .frame(height: 300)
    }
}

class SpringMenuPreview {

    static func two() -> TwoSpringItems {
        TwoSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .foregroundColor(.blue)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .foregroundColor(.blue)
                        .build()
        )
    }

    static func three() -> ThreeSpringItems {
        ThreeSpringItems(
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
                        .build()
        )
    }

    static func four() -> FourSpringItems {
        FourSpringItems(
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
                        .build()
        )
    }

    static func five() -> FiveSpringItems {
        FiveSpringItems(
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
                        .build()
        )
    }

    static func six() -> SixSpringItems {
        SixSpringItems(
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
                        .build()
        )
    }

    static func seven() -> SevenSpringItems {
        SevenSpringItems(
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
                        .icon(Image(systemName: "mic.fill"))
                        .foregroundColor(.blue)
                        .build()
        )
    }

    static func eight() -> EightSpringItems {
        EightSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item4: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item5: SpringItem.Builder()
                        .icon(Image(systemName: "pencil.circle"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item6: SpringItem.Builder()
                        .icon(Image(systemName: "folder"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item7: SpringItem.Builder()
                        .icon(Image(systemName: "square.and.arrow.up"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item8: SpringItem.Builder()
                        .icon(Image(systemName: "arrowshape.turn.up.forward"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
