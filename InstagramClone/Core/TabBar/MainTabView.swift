//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Adam Zaatar on 11/9/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
            .tabItem{
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            Text("Notifications")
                .tabItem{
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
