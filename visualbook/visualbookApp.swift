//
//  visualbookApp.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI
import FirebaseCore

@main


struct visualbookApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

struct CustomColor {
    static let mainColor = Color("AccentColor")
    // Add more here...
}
