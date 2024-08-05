//
//  AddCategory.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 5.08.2024.
//

import SwiftUI
import Alamofire

struct AddCategory: View {
    
    @State var name = ""
    @State var description = ""
    
    var body: some View {
        VStack{
            TextField("Name:", text: $name)
                .padding()
            TextField("Decription:", text: $description)
                .padding()
            
            Button("Add"){
                
                let newCategory : [String : Any] = [
                    "name": name,
                    "description":description
                ]
                
                AF.request("https://northwind.vercel.app/api/categories", method: .post, parameters: newCategory, encoding: JSONEncoding.default).responseDecodable(of: Category.self){response in
                    print(response.value!)
                    
                }
                
                
            }
            
            Spacer()
        }
    }
}

#Preview {
    AddCategory()
}
