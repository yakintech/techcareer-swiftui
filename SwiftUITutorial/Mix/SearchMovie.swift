//
//  SearchMovie.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 7.08.2024.
//

import SwiftUI
import Alamofire

struct SearchMovie: View {
    
    @State var movieName = ""
    @State var movies : ResponseModel = ResponseModel()
    
    var apiUrl = "https://www.omdbapi.com/?i=tt3896198&apikey=58004eef"
    
    var body: some View {
        ScrollView{
            VStack{
                
                TextField("Search...", text:$movieName)
                    .padding()
                
                Button("Search"){
                    
                    let request = AF.request("https://www.omdbapi.com/?s=" + movieName + "&apikey=58004eef")
                    
                    request.responseDecodable(of: ResponseModel.self){response in
                        movies = response.value ?? ResponseModel()
                    }
                    
                }
                
                Text("Result: \(movies.totalResults)")
                    .padding()
                
                ForEach(movies.Search, id:\.imdbID){item in
                    AsyncImage(url: URL(string: item.Poster))
                    Text(item.Title + " " + "\(item.Year)")
                    
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SearchMovie()
}



struct ResponseModel : Codable{
    
    var Search: [Movie] = []
    var totalResults : String = ""
    var Response : String = ""
}


struct Movie : Codable {
    var Title : String = ""
    var Year : String = ""
    var imdbID : String = ""
    var `Type` : String = ""
    var Poster : String = ""

}

