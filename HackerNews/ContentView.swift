//
//  ContentView.swift
//  HackerNews
//
//  Created by Ikechukwu Zion on 03/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject  var networkManager = NetworkManager()
    var body: some View {
        
        NavigationStack {
            List(networkManager.posts) {
                post in
                NavigationLink(destination: DetailView(url: post.url))
 {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                
                
                }
                
                
            }
            .navigationTitle("Hacker News")
            .navigationBarTitleDisplayMode(.automatic)
            
            
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
    }
}


#Preview {
    ContentView()
}

//
//let posts = [
//Post(id: "1", title: "Hello"),
//Post(id: "2", title: "Halo"),
//Post(id: "3", title: "Bonjour")
//]
