//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockwise: false)
                    , footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories){category in
                        CategoryItemView(category: category)
                    }//: LOOP
                }//: SECTION
            }//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
          
        }//: SCROLL
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
