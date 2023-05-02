//
//  Shop.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
