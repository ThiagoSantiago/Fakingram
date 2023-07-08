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
    
    func register(withEmail email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }

            guard let user = result?.user else { return }
            self.userSession = user
            print("Successfully resgistered user!")
        }
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
