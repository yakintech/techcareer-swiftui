//
//  ToDoList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 5.08.2024.
//

import SwiftUI
import Alamofire

struct ToDoList: View {
    
    @State var todos : [Todo] = []
    
    var body: some View {
        ScrollView{
            VStack{
                
                ForEach(todos, id:\.id){item in
                    //completed true ise o text kırmızı renk olsun
                    if(item.completed == true){
                        Text("\(item.id)" + " - " + item.title)
                            .padding()
                            .foregroundColor(.red)
                    }
                    else{
                        Text("\(item.id)" + " - " + item.title)
                            .padding()
                    }
                    
                      
                }
            }
            .onAppear(){
                let request = AF.request("https://jsonplaceholder.typicode.com/todos")
                
                request.responseDecodable(of: [Todo].self){response in
                    todos = response.value ?? []
                }
            }
        }
        
    }
}

#Preview {
    ToDoList()
}

struct Todo : Codable {
    var userId: Int = 0
    var id : Int = 0
    var title : String = ""
    var completed : Bool = true
}
