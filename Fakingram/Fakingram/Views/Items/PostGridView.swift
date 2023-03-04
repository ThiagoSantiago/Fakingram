//
//  PostGridView.swift
//  Fakingram
//
//  Created by thiago.santiago on 04/03/23.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    var body: some View {
        GeometryReader { geometry in
            let imageWidth = geometry.size.width / 3
            LazyVGrid(columns: items, spacing: 2) {
                ForEach(0 ..< 10) { _ in
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageWidth)
                        .clipped()
                }
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
