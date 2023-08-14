//
//  SignUpView.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI
import FirebaseAuth



struct SignUpView: View {
    @Binding var currentShowingView: String
    @AppStorage("uid") var userID: String = ""
    
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    
    var body: some View {
        VStack {
            Image("visualbook_logo")
                              .resizable()
                              .scaledToFill()
                              .frame(width: 200, height: 200)
                              .padding(.vertical, 32)
            
            
            HStack {
                Image(systemName: "person")
                TextField("Full Name", text: $fullName)
                
                Spacer()
                
            }
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .foregroundColor(CustomColor.mainColor))
            .padding()
            
            
            HStack {
                Image(systemName: "mail")
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                
                Spacer()
                
            }
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .foregroundColor(CustomColor.mainColor))
            .padding()
            
            
            HStack {
                Image(systemName: "lock")
                SecureField("Password", text: $password)
                
                Spacer()
                
            }
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .foregroundColor(CustomColor.mainColor))
            .padding()
            
            
          
            
            Button{
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                   
                    if let error = error {
                        print(error)
                        return
                    }
                   if let authResult = authResult {
                       print(authResult.user.uid)
                       userID = authResult.user.uid
                    }
                }//
                           } label: {
                               HStack {
                                   Text("SIGN UP")
                                       .fontWeight(.semibold)
                                   
                               }
                               .foregroundColor(.black)
                               .frame(width: 200, height: 48)
                           }
                           .background(CustomColor.mainColor)
                               .cornerRadius(10)
                               .padding(.top, 24)
                               .padding(.bottom, 24)
            
            
            Button (action: {
                withAnimation {
                    self.currentShowingView = "login"
                }
            }){
                //
            
                Text("Already have an Account?")
                    .foregroundColor(.black.opacity(0.7))
            }

            Spacer()
        }
    }
    }

