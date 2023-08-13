//
//  ClaimedVideo.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct ClaimedVideo: View {
    var body: some View {
        VStack{
            Button{
               ///
                           } label: {
                               HStack {
                                   Text("Pictures")
                                       .fontWeight(.semibold)
                                   
                               }
                               .foregroundColor(.black)
                               .frame(width: 350, height: 48)
                           }
                           .background(.gray)
                              
                               .padding(.top, 24)
                               .padding(.bottom, 24)
            
            
            Spacer()
            
            
            
            Button{
               //
                               //
                           } label: {
                               HStack {
                                   Text("Add Videos")
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
}

struct ClaimedVideo_Previews: PreviewProvider {
    static var previews: some View {
        ClaimedVideo()
    }
}
