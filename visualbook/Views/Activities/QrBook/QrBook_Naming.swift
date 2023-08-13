//
//  QrBook_Naming.swift
//  visualbook
//
//  Created by visual book  on 11/08/2023.
//

import SwiftUI

struct QrBook_Naming: View {
    
    
    @State private var visualbookName: String = ""
    
    
    var body: some View {
        VStack{
            Text("Personalise your experience by giving your Visual Book a name.")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            HStack {
                Image(systemName: "person.fill")
                TextField("Name your Visual Book here", text: $visualbookName)
                    .textInputAutocapitalization(.never)
                Spacer()
                
            }
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .foregroundColor(.black))
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

struct QrBook_Naming_Previews: PreviewProvider {
    static var previews: some View {
        QrBook_Naming()
    }
}
