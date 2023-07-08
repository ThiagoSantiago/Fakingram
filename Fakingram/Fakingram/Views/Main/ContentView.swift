//
//  ContentView.swift
//  Fakingram
//
//  Created by Thiago Santiago (Contractor) on 29/01/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginViewFactory.make()
            } else {
                MainTabViewFactory.make()
            }
        }
    } 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
