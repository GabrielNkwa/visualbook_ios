//
//  FAQ.swift
//  visualbook
//
//  Created by visual book  on 11/08/2023.
//

import SwiftUI

struct FAQ: View {
    var body: some View {
        VStack {
            Text("FAQ")
                .bold()
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding()
            
            
            Spacer()
            Text("Time to create interactive and immersive ways to capture and preserve memories")
                
                .font(.system(size: 16))
                .padding()
        }
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
