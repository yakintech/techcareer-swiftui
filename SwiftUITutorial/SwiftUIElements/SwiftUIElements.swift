//
//  SwiftUIElements.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 29.07.2024.
//

import SwiftUI

struct SwiftUIElements: View {
    var body: some View {
        HStack{
            Text("Friday, 15 Dec")
            Spacer()
            Text("Search")
        }
        
        
        HStack{
            Text("Learn")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
               
            Spacer()
        }
        .padding(.top)
        .padding(.bottom)
        
        HStack{
            Text("Choose of the part of the body")
            Spacer()
        }
        .padding(.bottom)
        
        HStack{
            VStack(alignment: .leading, content: {
                Text("Head & Face")
                    .foregroundColor(.white)
                
                Text("11 diseases")
                    .foregroundColor(.white)
            })
        
            Spacer()
        }
        .padding()
        .background(.red)
        .cornerRadius(9)
        
        HStack{
            VStack(alignment: .leading, content: {
                Text("Back & Neck")
                    .foregroundColor(.white)
                
                Text("9 diseases")
                    .foregroundColor(.white)
            })
        
            Spacer()
        }
        .padding()
        .background(.green)
        .cornerRadius(9)
        
        
        Image(systemName: "moon.stars.fill")
        
    
        Spacer()
        
    }
}


#Preview {
    SwiftUIElements()
}
