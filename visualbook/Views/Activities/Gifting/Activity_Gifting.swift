//
//  Activity_Gifting.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct Activity_Gifting: View {
    var body: some View {
        VStack{
            Text("Setting Up a New Book or Received a Gift?")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            
            Text("Before setting up a new book, inviting others, and/or adding your virtual code for gifted books, scan the QR code on the book first.")
                .padding()
            
            
            Spacer()
            Button{
               //
                               //
                           } label: {
                               HStack {
                                   Text("Scan and Connect")
                                       .fontWeight(.semibold)
                                   
                               }
                               .foregroundColor(.black)
                               .frame(width: 200, height: 48)
                           }
                           .background(CustomColor.mainColor)
                               .cornerRadius(10)
                               .padding(.top, 54)
                               .padding(.bottom, 24)
            
            Spacer()
            
            
        }
    }
}

struct Activity_Gifting_Previews: PreviewProvider {
    static var previews: some View {
        Activity_Gifting()
    }
}
