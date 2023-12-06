//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            CharacteListingView()
                .tabItem {
                    Label("Characters", systemImage: "person.3")
                }
            EpisodeListingView()
                .tabItem {
                    Label("Episodes", systemImage: "popcorn" )
                }
            LocationListingView()
                .tabItem {
                    Label("Character location", systemImage: "location.magnifyingglass")
                }
        }
    }
}

#Preview {
    ContentView()
}
