//
//  StateSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 29.07.2024.
//

import SwiftUI

struct OneWayBinding: View {
    
    var name = "Çağatay"
    var age = 11
    var countries = ["Türkiye", "Rusya", "Yunanistan", "İran", "İsveç", "Brezilya"]
    
    var body: some View {
        Text(name)
            .padding()
        
        Text("\(age)")
            .padding()
        
        Text(String(age))
            .padding()
        
        ForEach(countries, id:\.self){country in
            Text(country)
        }
    }
}

#Preview {
    OneWayBinding()
}
