//
//  ContentView.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    
    @AppStorage("uid") var userID: String = ""
    var body: some View {
        
        if userID == "" {
            AuthView()
            
        } else {
            TabView{
                HomeScreenView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                BooksView()
                    .tabItem {
                        Image(systemName: "book.fill")
                            .font(.system(size: 36))
                            
                        Text("Books")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
         

        }
      
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
