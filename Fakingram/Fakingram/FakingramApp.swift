//
//  FakingramApp.swift
//  Fakingram
//
//  Created by Thiago Santiago (Contractor) on 22/01/23.
//

import SwiftUI
import Firebase

@main
struct FakingramApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentFactory.make()
        }
    }
}
