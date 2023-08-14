//
//  NavigationBarView.swift
//  visualbook
//
//  Created by visual book  on 13/08/2023.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack{
            Image ("visualbook_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130, alignment: .center)
                .offset(y: -30)
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits )
    }
}
