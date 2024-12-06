//
//  FeedView.swift
//  InstagramClone
//
//  Created by Adam Zaatar on 11/9/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 32) {
                    ForEach(1...15, id: \.self){ index in
                        FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("instagram_word")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "paperplane")
                    imageScale(.large)
                }
            }
        }

    }
}

#Preview {
    FeedView()
}
