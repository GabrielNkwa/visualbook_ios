//
//  Activity_Gifting2.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct Activity_Gifting2: View {
    var body: some View {
        VStack{
            Text("Gifting a Visual Book?")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            
            Text("Easily generate a special virtual code from anywhere in the world and gift it to your loved ones.                                                                          If you have the box and would love to gift in person, choose the QR code option located on the packaging.")
                .padding()
           
            
            
          
            RoundedRectangle(cornerRadius: 10)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("GENERATE A VIRTUAL CODE") .bold() )
            RoundedRectangle(cornerRadius: 10)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("SET UP USING QR CODE") .bold() )
            
            
            Spacer()
            
            
        }
    }
}

struct Activity_Gifting2_Previews: PreviewProvider {
    static var previews: some View {
        Activity_Gifting2()
    }
}
