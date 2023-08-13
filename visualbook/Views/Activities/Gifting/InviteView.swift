//
//  InviteView.swift
//  visualbook
//
//  Created by visual book  on 13/08/2023.
//

import SwiftUI

struct InviteView: View {
    @State private var recipientContact: String = ""
    
    
    var body: some View {
        VStack{
            Text("Who are you preparing the Visual Book for?")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            
            Text("Set the receipient's name or add a title. They can rename the book later")
                .padding()
           
            
            
            HStack {
                Image(systemName: "person.fill")
                TextField("The person's name", text: $recipientContact)
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
            
            RoundedRectangle(cornerRadius: 10)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("Next") .bold() )
            
            
           
            
            
        }
    }
}



struct InviteView_Previews: PreviewProvider {
    static var previews: some View {
        InviteView()
    }
}
