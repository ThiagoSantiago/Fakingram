//
//  RegistrarionViewFactory.swift
//  Fakingram
//
//  Created by Thiago Santiago on 02/04/23.
//

import Foundation

enum RegistrationViewFactory {
    static func make() -> RegistrationView {
        let registrationView = RegistrationView()
        registrationView.environmentObject(AuthViewModel())
        return registrationView
    }
}
