//
//  LoginViewFactory.swift
//  Fakingram
//
//  Created by Thiago Santiago on 02/04/23.
//

import SwiftUI

enum LoginViewFactory {
    static func make() -> some View {
        let loginView = LoginView()
        return loginView.environmentObject(AuthViewModel())
    }
}
