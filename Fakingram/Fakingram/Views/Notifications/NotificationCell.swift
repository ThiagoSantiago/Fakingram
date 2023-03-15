//
//  NotificationCell.swift
//  Fakingram
//
//  Created by thiago.santiago on 15/03/23.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = true
    var body: some View {
        HStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())

            Text("Batman")
                .font(.system(size: 14, weight: .semibold)) +
            Text(" like one of your posts.")
                .font(.system(size: 15))

            Spacer()

            if showPostImage {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipped()
            } else {
                Button(action: {
                    // TODO: to be implemented later
                }) {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                }
            }
        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
