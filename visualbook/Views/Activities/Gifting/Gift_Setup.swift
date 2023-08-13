//
//  Gift_Setup.swift
//  visualbook
//
//  Created by visual book  on 13/08/2023.
//

import SwiftUI

struct Gift_Setup: View {
    var body: some View {
        VStack{
            Text("Create the Perfect Gift and Share Memorable Moments")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            RoundedRectangle(cornerRadius: 10)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("Gift Setup") .bold() )
                 
                 .padding(.top, 150)
             
            
            RoundedRectangle(cornerRadius: 10)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("Invite family and friends") .bold() )
                 .offset(y: -30)
            RoundedRectangle(cornerRadius: 10)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("Add videos and Photos") .bold() )
                 .offset(y: -60)
                 
             
            
           
            
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 10)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("Done") .bold() )
                               
                                
            
        }
    }
}
   

struct Gift_Setup_Previews: PreviewProvider {
    static var previews: some View {
        Gift_Setup()
    }
}
