//
//  CounterSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 29.07.2024.
//

import SwiftUI

struct CounterSample: View {
    
    @State var counter = 0
    
    var body: some View {
        VStack{
            Text("Counter: \(counter)")
                .font(.largeTitle)
                .padding()
            
            Button("Increase"){
                counter = counter + 1
            }
            .font(.largeTitle)
            
            Button("Decrease"){
                counter = counter - 1
            }
            .font(.largeTitle)
        }
    }
}

#Preview {
    CounterSample()
}
