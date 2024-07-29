//
//  StateArraySample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 29.07.2024.
//

import SwiftUI

struct StateArraySample: View {
    
    //Statelere number, string, array atanabilir. ( obje ve obje listesini göreceğiz!)
    @State var metalBands : [String] = ["Gojira", "Iron Maiden", "Amon Amarth", "Rotting Christ", "Slipknot"]
    
    var body: some View {
        VStack{
            
            Text("Count: \(metalBands.count)")
                .font(.largeTitle)
                .padding()
            
            Button("Clear"){
                metalBands = []
            }
            
            ForEach(metalBands, id:\.self){item in
                Text(item)
                    .padding()
            }
            
        }
    }
}

#Preview {
    StateArraySample()
}
