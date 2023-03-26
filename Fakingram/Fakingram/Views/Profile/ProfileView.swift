//
//  ProfileView.swift
//  Fakingram
//
//  Created by Thiago Santiago (Contractor) on 29/01/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                ProfileHeaderView()

                PostGridView()
            }.padding(.top)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
