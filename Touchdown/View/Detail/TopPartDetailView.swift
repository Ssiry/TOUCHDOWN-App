//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTY
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center,spacing: 6) {
            // PRICE
            VStack {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }.offset(y: isAnimating ? -50: -75 )
            Spacer()
            
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35 )
        }//: H-STACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
