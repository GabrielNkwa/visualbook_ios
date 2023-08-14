//
//  Activity_Gifting2.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import SwiftUI

struct Activity_Gifting2: View {
    var body: some View {
        NavigationStack {
            VStack{
                
                
                    Text("Gifting a Visual Book?")
                        .bold()
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                        .padding()
                        .offset(y: -200)
                    
                    
                    Text("Easily generate a special virtual code from anywhere in the world and gift it to your loved ones.                                                                          If you have the box and would love to gift in person, choose the QR code option located on the packaging.")
                        .padding()
                        .offset(y: -170)
                
                
              
                
                
                
                VStack{
                    NavigationLink{
                        
                    }label: {
                        Text("SET UP USING QR CODE")
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 250, height: 40)
                    }
                    .buttonStyle(.borderedProminent)
                    
                    
                }
                .padding(.top, 150)
                
                
                
                NavigationLink{
                    ScannerView()
                }label: {
                    Text("SET UP USING QR CODE")
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 250, height: 40)
                }
                .buttonStyle(.borderedProminent)
                
                
            }
            .padding(.top, 150)
            
            
            
            
            
            
        }
    }
    
    
    
    struct Activity_Gifting2_Previews: PreviewProvider {
        static var previews: some View {
            Activity_Gifting2()
        }
    }
}
