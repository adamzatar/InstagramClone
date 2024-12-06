//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Adam Zaatar on 11/9/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            // image + username
            HStack{
                Image("adam")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("adam.zatar")
                    .fontWeight(.semibold)
                    .font(.footnote)
                Spacer()
            }
            .padding(.leading, 8)
            
            // post image
            Image("miami")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // action buttons
            HStack(spacing: 16){
                Button{
                    print("Like post")
                } label:{
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button{
                    print("Comment on post")
                } label:{
                    Image("comment")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                Button{
                    print("Share post")
                } label:{
                    Image(systemName: "paperplane")
                        .imageScale(.large)

                }
                Spacer()
                
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            // likes label
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment:.leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            // caption label
            HStack{
                Text("adam.zatar ").fontWeight(.semibold) +
                Text("Fuck indians hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
