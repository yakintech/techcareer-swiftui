//
//  CategoryList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 5.08.2024.
//

import SwiftUI
import Alamofire

struct CategoryList: View {
    
    @State var categories : [Category] = [] // String, number, array
    
    var body: some View {
        
        VStack{
            
            ForEach(categories,id:\.id){item in
                
                Text(item.name)
                    .padding()
            }
            
        }
        .onAppear(){
            //Ekran hazırlandığında web servise gidip dataları çekiyorum!
            
            let request = AF.request("https://northwind.vercel.app/api/categories")
            
            request.responseDecodable(of: [Category].self){response in
                categories = response.value ?? []
            }
        }
    }
}

#Preview {
    CategoryList()
}


struct Category : Decodable {
    var id : Int = 0;
    var name : String = "";
    var description : String = ""
}
