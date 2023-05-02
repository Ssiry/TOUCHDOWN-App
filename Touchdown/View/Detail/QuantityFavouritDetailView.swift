//
//  QuantityFavouritDetailView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import SwiftUI

struct QuantityFavouritDetailView: View {
    // MARK: - PROPERTY
    @State private var counter: Int = 0
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center , spacing: 6) {
            Button {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                feedback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
            
        }//: H-STACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouritDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouritDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
