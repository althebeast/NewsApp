//
//  ContentView.swift
//  NewsApp
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView{
            
            NewsView()
                .tabItem {
                    Label("Haberler", systemImage: "house.circle.fill")
                }
            
            VideosView()
                .tabItem {
                    Label("Videolar", systemImage: "video.circle.fill")
                }
            
            FavoriteNewsView()
                .tabItem {
                    Label("Favoriler", systemImage: "star.circle.fill")
                }
        }
        .accentColor(.black)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
