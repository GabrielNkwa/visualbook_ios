//
//  HomeScreenView.swift
//  visualbook
//
//  Created by visual book  on 14/08/2023.
//

import SwiftUI

struct HomeScreenView: View {
    
    
    
    
    
    var body: some View {
        
      
        
        NavigationStack{
           
            NavigationBarView()
                Spacer()
            
            VStack {
                HStack{
                    
                    NavigationLink(destination: Book_setup_Options()){
                        VStack {
                            
                            Image("booksetup")
                                .resizable()
                                .scaledToFit()
                                
                            
                            Text("Book Setup")
                                .padding()
                                .offset(y: -20)
                                .foregroundColor(.black)
                        }
                        .frame(width: 150, height: 150)
                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .stroke(CustomColor.mainColor, lineWidth: 5)
                    )
                    }
                   
                    NavigationLink(destination: Gift_Setup()) {
                        VStack {
                            Image("giftsetup")
                                .resizable()
                                .scaledToFit()
                                
                            
                            Text("Gift Setup")
                                .padding()
                                .offset(y: -20)
                                .foregroundColor(.black)
                        }
                        .frame(width: 150, height: 150)
                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .stroke(CustomColor.mainColor, lineWidth: 5)
                    )
                    }
                   
                }
                HStack{
                    
                    NavigationLink(destination: MediaEditor()) {
                        VStack {
                            Image("mediaeditor")
                                .resizable()
                                .scaledToFit()
                                
                            
                            Text("Media Editor")
                                .padding()
                                .offset(y: -20)
                                .foregroundColor(.black)
                        }
                        .frame(width: 150, height: 150)
                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .stroke(CustomColor.mainColor, lineWidth: 5)
                    )
                    }
                   
                    NavigationLink(destination: FAQ()) {
                        VStack {
                            Image("ic_helpicon_foreground")
                                .resizable()
                                .scaledToFit()
                                
                            
                            Text("Help")
                                .padding()
                                .offset(y: -20)
                                .foregroundColor(.black)
                        }
                        .frame(width: 150, height: 150)
                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .stroke(CustomColor.mainColor, lineWidth: 5)
                    )
                    }
                   
                }
                HStack{
                    
                Link(destination: URL(string: "https://thevisualbook.com/collections/all")!) {
                        VStack {
                            Image("shopicon")
                                .resizable()
                                .scaledToFit()
                                
                            
                            Text("Shop")
                                .padding()
                                .offset(y: -20)
                                .foregroundColor(.black)
                        }
                        .frame(width: 150, height: 150)
                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .stroke(CustomColor.mainColor, lineWidth: 5)
                    )
                    }
                   
                    NavigationLink(destination: ActivitiesView()) {
                        VStack {
                            Image("activities")
                                .resizable()
                                .scaledToFit()
                                
                            
                            Text("Activities")
                                .padding()
                                .offset(y: -20)
                                .foregroundColor(.black)
                        }
                        .frame(width: 150, height: 150)
                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .stroke(CustomColor.mainColor, lineWidth: 5)
                    )
                    }
                   
                }
               
                
            }
            .offset(y: -100)
           
            
        }
    }
    
    struct HomeScreenView_Previews: PreviewProvider {
        static var previews: some View {
            HomeScreenView()
        }
    }
}
