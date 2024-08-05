//
//  StateArraySample2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 31.07.2024.
//

import SwiftUI

struct StateArraySample2: View {
    
    @State var name = ""
    @State var names : [String] = []
    @State var deletedItems : [String] = []
    
    var body: some View {
        VStack{
            
            TextField("Name", text: $name)
                .padding()
            
            Button("Add"){
                names.append(name)
                name = ""
            }
            
            Divider()
            
            Text("Count: \(names.count)")
            
            ForEach(names, id:\.self){item in
                
                HStack{
                    Text(item)
                        .padding()
                    
                    Button{
                        var nameIndexNo = names.firstIndex(of: item)
                        names.remove(at: nameIndexNo ?? 0)
                        
                        deletedItems.append(item)
                    }
                label:{
                    Image(systemName: "trash")
                }
                }
                
            }
            
            Divider()
            Text("Deleted Items")
            
            ForEach(deletedItems, id:\.self){item in
                
                HStack{
                    Text(item)
                        .padding()
                    Button{
                        var nameIndexNo = deletedItems.firstIndex(of: item)
                        deletedItems.remove(at: nameIndexNo ?? 0)
                        
                        names.append(item)
                    }
                label:{
                    Image(systemName: "arrowshape.turn.up.backward")
                }
                
                }
                
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    StateArraySample2()
}
