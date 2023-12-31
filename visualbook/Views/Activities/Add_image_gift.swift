//
//  Add_image_gift.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct Add_image_gift: View {
    var body: some View {
        VStack{
            Text("Choose an image to attach as part of the gift")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
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
}

struct Add_image_gift_Previews: PreviewProvider {
    static var previews: some View {
        Add_image_gift()
    }
}
