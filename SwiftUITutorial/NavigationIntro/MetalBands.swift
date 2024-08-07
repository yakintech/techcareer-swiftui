//
//  ProductList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 7.08.2024.
//

import SwiftUI

struct MetalBands: View {
    
    var metalBands = ["Gojira", "Slipknot", "Iron Maiden", "Bahemoth", "Children of Bodom", "Amon Amarth", "Sylosis", "Parkway Drive" ]
    
    var body: some View {
       
        NavigationView{
            VStack{
                
                ForEach(metalBands, id:\.self){item in
                    
                    NavigationLink(destination: Detail(name: item)){
                        Text(item)
                            .padding()
                        
                    }
                    
                }
                
            }
        }
        
    }
}

#Preview {
    MetalBands()
}
