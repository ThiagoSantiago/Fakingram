//
//  RegistrationView.swift
//  Fakingram
//
//  Created by Thiago Santiago on 01/04/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var username = ""
    @State private var password = ""
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State var imagePickerPresented = false
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:  [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack {
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())

                    } else {
                        Button { imagePickerPresented.toggle() } label: {
                            Image("plus-photo")
                                .resizable()
                                .renderingMode(.template)
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 140, height: 140)
                        }.sheet(isPresented: $imagePickerPresented, onDismiss: {
                            loadImage()
                        }) {
                            ImagePicker(image: $selectedImage)
                        }.padding()
                    }
                }
                
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    CustomTextField(text: $email, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    CustomTextField(text: $email, placeholder: Text("Full Name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                }
                
                Button {
                    viewModel.register()
                } label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width:360, height: 50)
                        .background(.purple)
                        .clipShape(Capsule())
                        .padding()
                }
                    
                Spacer()
                
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }.foregroundColor(.white)
                }.padding()
            }
        }
    }
}

extension RegistrationView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
