//
//  HomeScreenView.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI
import FirebaseAuth

struct Item: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let imgColor: Color
    
}

struct HomeScreenView: View {
    
    let items = [
        Item(title: "Book Setup", image: "booksetup", imgColor: CustomColor.mainColor),
        Item(title: "Gift Setup", image: "giftsetup", imgColor: CustomColor.mainColor),
        Item(title: "Media Editor", image: "mediaeditor", imgColor: CustomColor.mainColor),
        Item(title: "Help", image: "ic_helpicon_foreground 1", imgColor: CustomColor.mainColor),
        Item(title: "Shop", image: "shopicon", imgColor: CustomColor.mainColor)
    ]
    
    let spacing: CGFloat = 10
    @State private var numberOfRows = 2
    
    var body: some View {
        
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberOfRows)
        
        ScrollView {
            
            // HeaderView
            headerView
            
            LazyVGrid(columns: columns, spacing: spacing){
                ForEach(items) { item in
                    ItemView(item: item)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
        .offset(y: -90)
        
        
    }
    
    var headerView: some View {
        VStack {
            Image("visualbook_logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                            
         
           
        }
       
    }
    
   
    }


struct ItemView: View {
    
    
    let item: Item
    
    var body: some View {
        
        
        GeometryReader{ reader in
            VStack(spacing: 5) {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(item.imgColor)
                    .frame(width: 50 )
                
                Text(item.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.9))
            }
            .frame(width: reader.size.width, height: reader.size.height)
            .background(.white)
           
        }
        .frame(height: 150)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
    }
}
    
    
    struct HomeScreenView_Previews: PreviewProvider {
        static var previews: some View {
            HomeScreenView()
        }
    }

