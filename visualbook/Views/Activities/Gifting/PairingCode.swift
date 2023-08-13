//
//  Activity_Gifting3.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct PairingCode: View {
    var body: some View {
        VStack{
            Text("This is the pairing code generated from your device")
                .padding()
            
            
            Text("281 -408")
                .font(.headline)
                .padding()
                .bold()
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
                               .frame(width: 200, height: 48)
                           }
                           .background(CustomColor.mainColor)
                               .cornerRadius(10)
                               .padding(.top, 10)
                               .padding(.bottom, 24)
        }
    }
}

struct Activity_Gifting3_Previews: PreviewProvider {
    static var previews: some View {
        PairingCode()
    }
}
