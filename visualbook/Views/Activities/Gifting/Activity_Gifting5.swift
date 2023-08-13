//
//  Activity_Gifting5.swift
//  visualbook
//
//  Created by visual book  on 11/08/2023.
//

import SwiftUI

struct Activity_Gifting5: View {
    var body: some View {
        VStack{
            Text("We have emailed you the code for later")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            
            Text("Prepare a heartwarming gift by adding a personal message, photos, and videos.                                                                                  then, share the code below with")
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

struct Activity_Gifting5_Previews: PreviewProvider {
    static var previews: some View {
        Activity_Gifting5()
    }
}
