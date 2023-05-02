//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Hassan Assiry on 07/04/2023.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
