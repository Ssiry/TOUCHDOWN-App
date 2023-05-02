//
//  FooterView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 07/04/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        
        VStack(alignment: .center,spacing: 10) {
            
            Text("we offer the most cutting edge, comfortable, lightweight and durable football helmets in the market")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Hassan Asery\nAll right reserved")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }// V-STACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}

