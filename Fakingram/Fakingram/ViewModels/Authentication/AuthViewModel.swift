//
//  AuthViewModel.swift
//  Fakingram
//
//  Created by Thiago Santiago on 02/04/23.
//

import SwiftUI
import Firebase

final class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?

    init() {
        userSession = Auth.auth().currentUser
    }
    func login() {
        print("login")
    }
    
    func register() {
        print("register")
    }
    
    func signout() {
        print("signout")
    }
    
    func resetPassword() {
        
    }
    
    func fetchUser() {
        print("fetchUser ")
    }
}
