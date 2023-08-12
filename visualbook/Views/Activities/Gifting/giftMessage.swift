//
//  giftMessage.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct giftMessage: View {
    @State private var recipientMessage: String = ""
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
            
            
            TextField("Please type in your message here...", text: $recipientMessage, axis: .vertical)
                .lineLimit(3, reservesSpace: true)
                            .textFieldStyle(.roundedBorder)
                            .padding()
            
            
            
            
            Spacer()
            
            Button{
               //
                               //
                           } label: {
                               HStack {
                                   Text("Save")
                                       .fontWeight(.semibold)
                                   
                               }
                               .foregroundColor(.black)
                               .frame(width: 200, height: 48)
                           }
                           .background(CustomColor.mainColor)
                               .cornerRadius(10)
                               .padding(.top, 24)
                               .padding(.bottom, 24)
        }
    }
    
    struct giftMessage_Previews: PreviewProvider {
        static var previews: some View {
            giftMessage()
        }
    }
}
