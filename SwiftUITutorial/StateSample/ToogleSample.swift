//
//  ToogleSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 29.07.2024.
//

import SwiftUI

struct ToogleSample: View {
    
    
    @State var isOpen = true
    
    var body: some View {
        VStack{
            Toggle("Open", isOn: $isOpen)
                .padding()
            
            if(isOpen){
                Text("Hello Swift UI! Hello Swift UI!Hello Swift UI!Hello Swift UI!Hello Swift UI!Hello Swift UI!Hello Swift UI!Hello Swift UI!Hello Swift UI!")
            }
        }
    }
}

#Preview {
    ToogleSample()
}
