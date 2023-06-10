//
//  LoginView.swift
//  Fakingram
//
//  Created by Thiago Santiago on 01/04/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors:  [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("instagram-logo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 220, height: 100)
                        .padding(.top, 100)
                    
                    VStack(spacing: 20) {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
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
                    
                    HStack {
                        Spacer()
                        Button {} label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 32)
                        }
                    }
                    
                    Button {
                        viewModel.login()
                    } label: {
                        Text("Sign in")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width:360, height: 50)
                            .background(.purple)
                            .clipShape(Capsule())
                            .padding()
                    }
                        
                    Spacer()
                    
                    NavigationLink(destination:
                        RegistrationView().navigationBarHidden(true)
                    ) {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign UP")
                                .font(.system(size: 14, weight: .semibold))
                        }.foregroundColor(.white)
                    }.padding()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
