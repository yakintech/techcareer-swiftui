//
//  KDVCalc.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 29.07.2024.
//

import SwiftUI

struct KDVCalc: View {
    
    @State var price = ""
    @State var kdvPrice = 0.0
    var body: some View {
        VStack{
            
            TextField("Price", text: $price)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
            
            Text("KDV: \(kdvPrice)")
                .padding()
            
            Button("KDV Calc"){
                kdvPrice = (Double(price) ?? 0) * 0.2
            }
            .padding()
        }
    }
}

#Preview {
    KDVCalc()
}
