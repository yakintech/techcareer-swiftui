//
//  TextInputSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 29.07.2024.
//

import SwiftUI

struct TextInputSample: View {
    
    @State var name = ""
    @State var surname = ""
    @State var fullnames : [String] = []
    
    var body: some View {
        
        Button("Clear"){
            fullnames = []
        }
        .padding()
        
        TextField("Name", text: $name)
            .padding()
            .background(Color.black.opacity(0.1))
            .cornerRadius(15)
        
        TextField("Surname", text: $surname)
            .padding()
            .background(Color.black.opacity(0.1))
            .cornerRadius(15)
        
        Button("Add"){
            let fullname = name + " " + surname
            
            //append function ile diziye eleman ekliyorum!
            fullnames.append(fullname)
            
            name = ""
            surname = ""
        }
        .padding()
        
        Text("Count: \(fullnames.count)")
        
         
        ForEach(fullnames, id:\.self){item in
            Text(item)
                .padding()
        }
        
        
        
    }
    
}

#Preview {
    TextInputSample()
}
