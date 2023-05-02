//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - PROPERTY
    let sizes: [String] = ["XS","S","M","L","XL"]
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top , spacing: 3) {
            // RATINGS
            VStack(alignment: .leading,spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5,id: \.self) { item in
                        Button {
                            //
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28,alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }

                    }
                }
            }
            Spacer()
            // SIZES
            VStack(alignment: .trailing,spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes,id: \.self) { size in
                        Button {
                            //
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width:28 , height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 1)
                                )
                        }

                    }
                }
            }
        }//: H-STACK
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
