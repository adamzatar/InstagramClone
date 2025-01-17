//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Adam Zaatar on 11/9/24.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView{
                // header
                VStack(spacing: 10){
                    
                    // pic and stats
                    HStack{
                        Image("adam")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        Spacer()
                        HStack(spacing: 8){
                            UserStatView(value: 3, title: "Posts")
                            UserStatView(value: 3, title: "Followers")
                            UserStatView(value: 3, title: "Following")
                            
                        }
                    }
                    .padding(.horizontal)
                    // name and bio
                    VStack(alignment: .leading){
                        Text("Chadwick Boseman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Wakanda Forever")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    Button{
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
                        
                    }
                    
                    Divider()
                }
                // post grid view
                LazyVGrid(columns: gridItems, spacing: 1){
                    
                    ForEach(1...15, id: \.self){ index in
                        Image("adam")
                            .resizable()
                            .scaledToFill()
                    }
                    
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName:"line.3.horizontal")
                            .foregroundColor(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
