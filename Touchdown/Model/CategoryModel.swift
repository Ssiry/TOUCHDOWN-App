//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Hassan Assiry on 08/04/2023.
//

import Foundation

struct Category: Codable , Identifiable {
    let id: Int
    let name: String
    let image: String
}
