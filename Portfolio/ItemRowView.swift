//
//  ItemRowView.swift
//  Portfolio
//
//  Created by Sergey Timoshin on 17.11.2020.
//

import SwiftUI

struct ItemRowView: View {

    @ObservedObject var item: Item

    var body: some View {
        NavigationLink(
            destination: EditItemView(item: item),
            label: {
                Text(item.itemTitle)
            }
        )
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(item: Item.example)
    }
}
