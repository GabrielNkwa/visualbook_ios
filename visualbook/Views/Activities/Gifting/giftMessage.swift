//
//  giftMessage.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct giftMessage: View {
    @State private var recipientName: String = ""
    @AppStorage("uid") var userID: String = ""
    
    var body: some View {
        VStack{
            Text("Send a personal message with the gift")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            Text("The message will be delivered to the recipient when the Visual Book is connected at its final destination.")
                .padding()
            
            
            HStack {
                Image(systemName: "person.fill")
                TextField("The person's name", text: $recipientName)
                    .textInputAutocapitalization(.never)
                Spacer()
                
            }
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .foregroundColor(CustomColor.mainColor))
            .padding()
            
            
            
            Spacer()
            
            
            
            Text("Save")
                .padding()
                .frame(width: 250, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(CustomColor.mainColor, lineWidth: 5)
                )
                .padding(.top, 150)
                
        }
    }
    
    struct giftMessage_Previews: PreviewProvider {
        static var previews: some View {
            giftMessage()
        }
    }
}
