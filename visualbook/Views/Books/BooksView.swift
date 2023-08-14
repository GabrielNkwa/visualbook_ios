//
//  BooksView.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct BooksView: View {
    var body: some View {
        NavigationStack  {
            VStack{
               NavigationBarView()
                    .padding(.top)
                    
                
                
        
                
                
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
              
                VStack{
                    
                    NavigationLink{
                        
                    }label: {
                        Text("Add Book")
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 250, height: 40)
                    }
                    .buttonStyle(.borderedProminent)
                    
                     
                     
                     
                     
                    NavigationLink{
                        BookList()
                    }label: {
                        Text("My Book")
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 250, height: 40)
                    }
                    .buttonStyle(.borderedProminent)
                    
                    
                }
                .padding(.top, 150)
                .offset(y: -50)
               
                    
                     
            }
        }
//        .padding(.top, 100)
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}
