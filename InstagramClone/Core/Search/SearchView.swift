//
//  SearchView.swift
//  InstagramClone
//
//  Created by Adam Zaatar on 11/11/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView(){
                LazyVStack(spacing: 12){
                    ForEach(0...15, id: \.self){ user in
                        HStack {
                            Image("adam")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("adam")
                                    .fontWeight(.semibold)
                                
                                Text("grinno")
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
