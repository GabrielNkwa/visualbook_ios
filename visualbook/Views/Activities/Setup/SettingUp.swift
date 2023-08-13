//
//  SettingUp.swift
//  visualbook
//
//  Created by visual book  on 13/08/2023.
//

import SwiftUI

struct SettingUp: View {
    var body: some View {
        VStack{
            Text("Setting up a new book or recieved a gift?")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            
            Text("Before setting up a new book, inviting others, and/or adding your virtual code for gifted books, scan the QR code on the book first.")
                .italic()
                .padding()
            
           
            
            
          
            RoundedRectangle(cornerRadius: 16)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 90)
                 .overlay (Text ("Scan and Connect") .bold() )
                 
                 .padding(.top, 150)
             
           
            
            Spacer()
            
            
        }
    }
}


struct SettingUp_Previews: PreviewProvider {
    static var previews: some View {
        SettingUp()
    }
}
