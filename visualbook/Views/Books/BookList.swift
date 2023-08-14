//
//  BookList.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct BookList: View {
    var body: some View {
        NavigationStack {
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
                .padding(.bottom, 400)
                
                NavigationLink{
                    
                }label: {
                    Text("Add Book")
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 250, height: 40)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(CustomColor.mainColor, lineWidth: 5)
                )
                .offset(y: -50)
                    
            }
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
