//
//  ForgotPassword.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct ForgotPassword: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            Image("visualbook_logo")
                              .resizable()
                              .scaledToFill()
                              .frame(width: 200, height: 200)
                              .padding(.vertical, 32)
            Text("Forgot Password?")
                .bold()
                .font(.system(size: 25))
                .padding()
            
            Text("Please provide your email address to receive password reset support")
                .padding()
            
            HStack {
                Image(systemName: "mail")
                TextField("Email Address", text: $email)
                    .textInputAutocapitalization(.never)
                    
                Spacer()
                   
            }
            
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(CustomColor.mainColor, lineWidth: 2)
                .foregroundColor(.black))
            .padding()
            
            
            Button{
               //
                               //
                           } label: {
                               HStack {
                                   Text("Reset Password")
                                       .fontWeight(.semibold)
                                   
                               }
                               .foregroundColor(.black)
                               .frame(width: 200, height: 48)
                           }
                           .background(CustomColor.mainColor)
                               .cornerRadius(10)
                               .padding(.top, 24)
                               .padding(.bottom, 24)
                
            
            Spacer()
            
            
           
        }
        
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
