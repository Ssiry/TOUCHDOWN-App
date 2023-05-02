//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red
                  , green: shop.selectedProduct?.green ?? sampleProduct.green
                  , blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
