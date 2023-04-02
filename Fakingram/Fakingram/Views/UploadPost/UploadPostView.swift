//
//  UploadPostView.swift
//  Fakingram
//
//  Created by Thiago Santiago (Contractor) on 29/01/23.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    @State var imagePickerPresented = false

    var body: some View {
        VStack {
            if postImage == nil {
                Button {
                    imagePickerPresented.toggle()
                } label: {
                    Image("plus-photo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                }.sheet(isPresented: $imagePickerPresented, onDismiss: {
                    loadImage()
                }) {
                    ImagePicker(image: $selectedImage)
                }
            } else if let image = postImage{
                HStack(alignment: .top) {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()

                    TextField("Enter your caption...", text: $captionText)
                }.padding()

                Button {
                    //TODO: the action will be implmeneted later
                } label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(5)
                }.padding()

            }

            Spacer()
        }

    }
}

extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
