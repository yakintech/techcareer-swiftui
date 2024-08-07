//
//  Detail.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 7.08.2024.
//

import SwiftUI

struct Detail: View {
    
    var name = "Default"
    
    var body: some View {
        VStack{
          Text(name)
                .padding()
                .font(.largeTitle)
        }
    }
}

#Preview {
    Detail()
}
