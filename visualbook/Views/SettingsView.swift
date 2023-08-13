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
        

         
          
                
               
                      
    
                          
              
       VStack {
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
           
           
           Text("Change Language")
               .padding()
               .frame(width: 250, height: 50)
               .overlay(
                   RoundedRectangle(cornerRadius: 16)
                       .stroke(CustomColor.mainColor, lineWidth: 5)
               )
               .padding(.top, 150)
               
           
           Text("Reset Password")
               .padding()
               
               .frame(width: 250, height: 50)
               .overlay(
                   RoundedRectangle(cornerRadius: 16)
                       .stroke(CustomColor.mainColor, lineWidth: 5)
               )
               .padding(.top)
               .onTapGesture(count: 1){
                   
               }
            
         
           
           Text("Wipe and Unpair device")
               .padding()
               .frame(width: 250, height: 50)
               .overlay(
                   RoundedRectangle(cornerRadius: 16)
                       .stroke(CustomColor.mainColor, lineWidth: 5)
               )
               .padding(.top)
            
            
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
           HStack{
               
               Image("ic_instagram_foreground")
                   .resizable()
                             .scaledToFill()
                             .frame(width: 20, height: 60)
                             .padding()
               Image("ic_tiktok_foreground")
                   .resizable()
                             .scaledToFill()
                             .frame(width: 20, height: 60)
                             .padding()
               Image("ic_pinterest_foreground")
                   .resizable()
                             .scaledToFill()
                             .frame(width: 20, height: 60)
                             .padding()
               Image("ic_youtube_foreground")
                   .resizable()
                             .scaledToFill()
                             .frame(width: 20, height: 60)
                             .padding()
           }
            
        }
             
                
                
       
                
            
                
            }
        }
    
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }

