//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 07/04/2023.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTY
    @State private var isAnimated: Bool = false
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title).foregroundColor(.black)
            }//: BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0  , y: isAnimated ? 0: -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                }
            Spacer()

            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title).foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14  , alignment: .center)
                        .offset(x: 13, y:-11)
                }//: BUTTON
            }
            
        }//: H-STACK
    }
}
// MARK: - preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
