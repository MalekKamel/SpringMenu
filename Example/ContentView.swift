//
// Created by Shaban on 25/05/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import SwiftUI
import SpringMenu

struct ContentView: View {

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
                            backgroundColor: SpringIconColor(collapsed: .black, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .black))
                    .items(items: Items.two(), position: .top)
                    .withPlaceholderItemsAnimation(false)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .black, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .black))
                    .items(items: Items.two(), position: .bottom)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .black, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .black))
                    .items(items: Items.two(), position: .vertical)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .black, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .black))
                    .items(items: Items.two(), position: .horizontal)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Three() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .blue, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .blue))
                    .items(items: Items.three(), position: .top)
                    .withPlaceholderItemsAnimation(false)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .blue, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .blue))
                    .items(items: Items.three(), position: .bottom)
                    .withPlaceholderItemsAnimation(false)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .blue, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .blue))
                    .items(items: Items.three(), position: .leading)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .blue, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .blue))
                    .items(items: Items.three(), position: .trailing)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Four() -> some View {
        let settings = SpringMenuSettings.Builder()
                .icon(.plus,
                        backgroundColor: SpringIconColor(collapsed: .orange, expanded: .white),
                        foreGroundColor: SpringIconColor(collapsed: .white, expanded: .orange))
                .items(items: Items.four())
                .backgroundColor(.white)
                .build()
        return SpringMenu(settings: settings)
                .frame(height: 300)
    }

    private func Five() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .green, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .green))
                    .items(items: Items.five(), gravity: .top)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .green, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .green))
                    .items(items: Items.five(), gravity: .bottom)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .green, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .green))
                    .items(items: Items.five(), gravity: .leading)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .green, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .green))
                    .items(items: Items.five(), gravity: .trailing)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Six() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .pink, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .pink))
                    .items(items: Items.six(), position: .vertical)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .pink, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .pink))
                    .items(items: Items.six(), position: .horizontal)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)
        }
    }

    private func Seven() -> some View {
        Group {
            let settings1 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .purple, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .purple))
                    .items(items: Items.seven(), gravity: .top)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings1)
                    .frame(height: 300)

            let settings2 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .purple, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .purple))
                    .items(items: Items.seven(), gravity: .bottom)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings2)
                    .frame(height: 300)

            let settings3 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .purple, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .purple))
                    .items(items: Items.seven(), gravity: .leading)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings3)
                    .frame(height: 300)

            let settings4 = SpringMenuSettings.Builder()
                    .icon(.plus,
                            backgroundColor: SpringIconColor(collapsed: .purple, expanded: .white),
                            foreGroundColor: SpringIconColor(collapsed: .white, expanded: .purple))
                    .items(items: Items.seven(), gravity: .trailing)
                    .backgroundColor(.white)
                    .build()
            SpringMenu(settings: settings4)
                    .frame(height: 300)
        }
    }

    private func Eight() -> some View {
        let settings = SpringMenuSettings.Builder()
                .icon(.plus,
                        backgroundColor: SpringIconColor(collapsed: .red, expanded: .white),
                        foreGroundColor: SpringIconColor(collapsed: .white, expanded: .red))
                .items(items: Items.eight())
                .backgroundColor(.white)
                .build()
        return SpringMenu(settings: settings)
                .frame(height: 300)
    }
}

class Items {

    static func two() -> TwoSpringItems {
        TwoSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.black)
                        .foregroundColor(.white)
                        .build()
        )
    }

    static func three() -> ThreeSpringItems {
        ThreeSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.blue)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.blue)
                        .foregroundColor(.white)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .backgroundColor(.blue)
                        .foregroundColor(.white)
                        .build()
        )
    }

    static func four() -> FourSpringItems {
        FourSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.orange)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.orange)
                        .foregroundColor(.white)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .backgroundColor(.orange)
                        .foregroundColor(.white)
                        .build(),
                item4: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .backgroundColor(.orange)
                        .foregroundColor(.white)
                        .build()
        )
    }

    static func five() -> FiveSpringItems {
        FiveSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.green)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.green)
                        .foregroundColor(.white)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .backgroundColor(.green)
                        .foregroundColor(.white)
                        .build(),
                item4: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .backgroundColor(.green)
                        .foregroundColor(.white)
                        .build(),
                item5: SpringItem.Builder()
                        .icon(Image(systemName: "pencil.circle"))
                        .backgroundColor(.green)
                        .foregroundColor(.white)
                        .build()
        )
    }

    static func six() -> SixSpringItems {
        SixSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.pink)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.pink)
                        .foregroundColor(.white)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .backgroundColor(.pink)
                        .foregroundColor(.white)
                        .build(),
                item4: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .backgroundColor(.pink)
                        .foregroundColor(.white)
                        .build(),
                item5: SpringItem.Builder()
                        .icon(Image(systemName: "pencil.circle"))
                        .backgroundColor(.pink)
                        .foregroundColor(.white)
                        .build(),
                item6: SpringItem.Builder()
                        .icon(Image(systemName: "folder"))
                        .backgroundColor(.pink)
                        .foregroundColor(.white)
                        .build()
        )
    }

    static func seven() -> SevenSpringItems {
        SevenSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.purple)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.purple)
                        .foregroundColor(.white)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .backgroundColor(.purple)
                        .foregroundColor(.white)
                        .build(),
                item4: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .backgroundColor(.purple)
                        .foregroundColor(.white)
                        .build(),
                item5: SpringItem.Builder()
                        .icon(Image(systemName: "pencil.circle"))
                        .backgroundColor(.purple)
                        .foregroundColor(.white)
                        .build(),
                item6: SpringItem.Builder()
                        .icon(Image(systemName: "folder"))
                        .backgroundColor(.purple)
                        .foregroundColor(.white)
                        .build(),
                item7: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .backgroundColor(.purple)
                        .foregroundColor(.white)
                        .build()
        )
    }

    static func eight() -> EightSpringItems {
        EightSpringItems(
                item1: SpringItem.Builder()
                        .icon(Image(systemName: "photo"))
                        .backgroundColor(.red)
                        .foregroundColor(.white)
                        .build(),
                item2: SpringItem.Builder()
                        .icon(Image(systemName: "note.text"))
                        .backgroundColor(.red)
                        .foregroundColor(.white)
                        .build(),
                item3: SpringItem.Builder()
                        .icon(Image(systemName: "doc"))
                        .backgroundColor(.red)
                        .foregroundColor(.white)
                        .build(),
                item4: SpringItem.Builder()
                        .icon(Image(systemName: "mic.fill"))
                        .backgroundColor(.red)
                        .foregroundColor(.white)
                        .build(),
                item5: SpringItem.Builder()
                        .icon(Image(systemName: "pencil.circle"))
                        .backgroundColor(.red)
                        .foregroundColor(.white)
                        .build(),
                item6: SpringItem.Builder()
                        .icon(Image(systemName: "folder"))
                        .backgroundColor(.red)
                        .foregroundColor(.white)
                        .build(),
                item7: SpringItem.Builder()
                        .icon(Image(systemName: "square.and.arrow.up"))
                        .backgroundColor(.red)
                        .foregroundColor(.white)
                        .build(),
                item8: SpringItem.Builder()
                        .icon(Image(systemName: "arrowshape.turn.up.forward"))
                        .backgroundColor(.red)
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
