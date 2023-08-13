//
//  AttachImage.swift
//  visualbook
//
//  Created by visual book  on 12/08/2023.
//

import SwiftUI

struct AttachImage: View {
    var body: some View {
        VStack{
            Text("Choose an image to Attach")
                .bold()
                .font(.system(size: 25))
                .padding()
            
            Spacer()
            
            
            Button {
                //
            } label: {
                HStack {
                    Text("Choose")
                        .fontWeight(.semibold)
                    
                }
                .foregroundColor(.black)
                .frame(width: 200, height: 48)
            }
            .background(.gray.opacity(0.8))
                    .cornerRadius(10)
                    .padding(.top, 54)
                    .padding(.bottom, 24)
            }

        }
    }


struct AttachImage_Previews: PreviewProvider {
    static var previews: some View {
        AttachImage()
    }
}
