//
//  ContentView.swift
//  HackerNewsSwiftUI
//
//  Created by Rudra Misra on 7/23/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { item in
                NavigationLink(destination: DetailView(url: item.url)) {
                    HStack {
                        Text(String(item.points))
                        Text(item.title)
                    }
                }
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

