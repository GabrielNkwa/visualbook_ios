//
//  Activity_Gifting4.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct Activity_Gifting4: View {
    @State private var recipientName: String = ""
    
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
            
            Button{
               //
                               //
                           } label: {
                               HStack {
                                   Text("Next")
                                       .fontWeight(.semibold)
                                   
                               }
                               .foregroundColor(.black)
                               .frame(width: 300, height: 48)
                           }
                           .background(CustomColor.mainColor)
                               .cornerRadius(10)
                               .padding(.top, 10)
                               .padding(.bottom, 24)
            
            
           
            
            
        }
    }
}

struct Activity_Gifting4_Previews: PreviewProvider {
    static var previews: some View {
        Activity_Gifting4()
    }
}
