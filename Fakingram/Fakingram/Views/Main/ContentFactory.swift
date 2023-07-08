//
//  ContentFactory.swift
//  Fakingram
//
//  Created by Thiago Santiago on 10/06/23.
//

import SwiftUI

enum ContentFactory {
    static func make() -> some View {
        let contentView = ContentView()
        return contentView.environmentObject(AuthViewModel())
    }
}
