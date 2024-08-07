//
//  StorageCounterSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 7.08.2024.
//

import SwiftUI

struct StorageCounterSample: View {
    
    @State var counter = UserDefaults.standard.integer(forKey: "counter")
    
    var body: some View {
        VStack{
            Text("Counter: \(counter)")
                .padding()
            
            Button("Increase"){
                counter = counter + 1
                
                //Telefona bu counter değerini KALICI bir şekilde kaydediyorum.
                UserDefaults.standard.set(self.counter, forKey: "counter")
            }
            
            Spacer()
        }
    }
}

#Preview {
    StorageCounterSample()
}
