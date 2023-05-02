//
//  SectionView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTY
    @State var rotateClockwise: Bool
    // MARK: - BODY
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            
            Text("categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees:rotateClockwise ? 90 : -90))
            
            Spacer()
        }//: V-STACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
