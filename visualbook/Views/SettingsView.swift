//
//  SettingsView.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI
import FirebaseAuth

struct SettingsView: View {
    
    
    @AppStorage("uid") var userID: String = ""
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.leading
    
    
    var body: some View {
        

        
        
        NavigationStack {
            
           
            
            VStack {
                
                NavigationBarView()
                    .padding(.top)
                
            
                
                VStack{
                   
                    HStack{
                        Text("Name: ")
                            .bold()
                        
                    }
                    
                    .padding()
                    .frame(width: 350, height: 50, alignment: .leading)
                    .border(CustomColor.mainColor, width: 4)
                    .buttonBorderShape(.roundedRectangle(radius: 10))
                    
                    
                    
                    HStack {
                        Text("Email:")
                            .bold()
                        
                    }
                    .padding()
                    .frame(width: 350, height: 50, alignment: .leading)
                    .border(CustomColor.mainColor, width: 4)
                    .buttonBorderShape(.roundedRectangle)
                    .padding(.bottom)
                 
                    
                    VStack {
                        NavigationLink{
                            
                        }label: {
                            Text("Change Language")
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 250, height: 50)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(CustomColor.mainColor, lineWidth: 5)
                        )
                        .padding()
                        
                        
                        NavigationLink{
                            ForgotPassword()
                        }label: {
                            Text("Reset Password")
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 250, height: 50)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(CustomColor.mainColor, lineWidth: 5)
                        )
                        .padding()
                        
                        
                        NavigationLink{
                            
                        }label: {
                            Text("Wipe and Unpair Devices")
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 250, height: 50)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(CustomColor.mainColor, lineWidth: 5)
                        )
                        .padding()
                    }
                    .padding()
                    
                    
                    Spacer()
                    Button (action: {
                        let firebaseAuth = Auth.auth()
                        do {
                            try firebaseAuth.signOut()
                            withAnimation {
                                userID = ""
                            }
                            
                            
                        } catch let signOutError as NSError {
                            print("Error signing out: %@", signOutError)
                        }
                    } ) {
                        Text("Sign Out")
                            .foregroundColor(.black)
                    }
                    .padding()
                    HStack{
                        
                        Image("ic_instagram_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                        Image("ic_tiktok_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                        Image("ic_pinterest_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                        Image("ic_youtube_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                    }
                    .offset(y: -20)
                    
                }
               
                    
                    
                }
                
               
        }
        
        
        
        
        
        
    }
    
    var headerView: some View {
        VStack {
            Image("visualbook_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 180)
                .padding(.top)
            
            
        }
    }
    
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }
    
}
