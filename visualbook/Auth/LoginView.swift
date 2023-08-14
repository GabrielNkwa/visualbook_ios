//
//  LoginView.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @Binding var currentShowingView: String
    @AppStorage("uid") var userID: String = ""
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        VStack {
            Image("visualbook_logo")
                              .resizable()
                              .scaledToFill()
                              .frame(width: 120, height: 200)
                              .padding(.vertical, 32)
            
            
            Text("Welcome")
                .bold()
                .padding()
            
            Text("Time to create interactive and immersive ways to capture and preserve memories")
                .italic()
                .font(.system(size: 16))
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
                Auth.auth().signIn(withEmail: email, password: password) { authresult, error in
                    if let error = error {
                        print(error)
                        return
                    }
                    
                    if let authResult = authresult {
                        print(authResult.user.uid)
                        withAnimation {
                            userID  = authResult.user.uid
                        }
                    }
                    
                    
                }
                               //
                           } label: {
                               HStack {
                                   Text("SIGN IN")
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
                    self.currentShowingView = "signup"
                }
            }
            ){
                //
                Text("Dont Have an Account?")
                    .foregroundColor(.black.opacity(0.7))
            }

            Spacer()
        }
    }
}

