//
//  FAQ.swift
//  visualbook
//
//  Created by visual book  on 11/08/2023.
//

import SwiftUI

struct FAQ: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationBarView()
                
                Text("FAQ")
                    .bold()
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .padding()
                    .offset(y: -80)
                
                
                Spacer()
                
                VStack {
                    Text("Our Social Media Pages")
                    
                        
                        .font(.system(size: 16))
                        .padding()
                    
                    HStack{
                        
                        Image("ic_instagram_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                        Image("ic_tiktok_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                        Image("ic_pinterest_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                        Image("ic_youtube_foreground")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 40)
                            .padding()
                    }
                    .offset(y: -20)
                    
                    
            
                    VStack {
                        Text("Our Support Email")
                            .bold()
                            .fontWeight( .bold)
                        HStack{
                            Image(systemName: "envelope.open")
                            Text("support@thevisualbook.com")
                                .accentColor(.black)
                        }
                    }
                }
                .offset(y: -60)
              
                
            }
            
            
        }
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
