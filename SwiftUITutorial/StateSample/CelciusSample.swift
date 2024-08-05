//
//  CelciusSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 31.07.2024.
//

import SwiftUI

struct CelciusSample: View {
    
    @State var celcius = "0"
    @State var fahrenayt = "0"
    
    var body: some View {
        
        HStack{
            TextField("Celcius", text:$celcius)
                .padding()
            
            Button{
                //celcius butona basıldığında fahrenayta dönecek
                //butonu ortadan tamamen kaldır. Inputa yazdığı an otomatik fahrenayt değeri yazsın
                //Sonuç virgüllü olacak ama virgül sonrası uzun bir data istemiyorun. Virgülden sonra sadece 2 değer olacak
            }
        label:{
            Image(systemName: "arrowshape.turn.up.backward")
        }
            
            Text("Fahrenayt: \(fahrenayt)")
        }
        
        Spacer()
    }
}

#Preview {
    CelciusSample()
}
