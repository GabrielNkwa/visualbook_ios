//
//  BooksView.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct BooksView: View {
    var body: some View {
        VStack{
            Image("visualbook_logo")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 1)
                .padding()
            
            
          
            
            
            
            
            
            
            
            
            
          Spacer()
            VStack{
                
                HStack{
                    Image("giftsetup")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20)
                        .frame(height: 50)
                        .padding()
                    
                    Text("Ezra ")
                        .bold()
                        
                }
               
                .padding()
                .frame(width: 350, height: 50, alignment: .leading)
                .border(CustomColor.mainColor, width: 0.5)
                 .buttonBorderShape(.roundedRectangle(radius: 10))
                
                HStack{
                    Image("giftsetup")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20)
                        .frame(height: 50)
                        .padding()
                    
                    Text("281 -406")
                        .bold()
                        
                }
               
                .padding()
                .frame(width: 350, height: 50, alignment: .leading)
                .border(CustomColor.mainColor, width: 0.5)
                 .buttonBorderShape(.roundedRectangle(radius: 10))
                
            }
            .padding(.bottom, 200)
            .offset(y: -60)
            
            
           RoundedRectangle(cornerRadius: 16)
                .fill(CustomColor.mainColor)
                .padding()
               
                .frame(width: 300, height: 80)
                .overlay (Text ("Add Book") .bold() )
                
                .padding(.top, 150)
            
            
            
            
            RoundedRectangle(cornerRadius: 16)
                 .fill(CustomColor.mainColor)
                 .padding()
                
                 .frame(width: 300, height: 80)
                 .overlay (Text ("My Book") .bold() )
                 .offset(y:-30)
                 
        }
//        .padding(.top, 100)
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}
