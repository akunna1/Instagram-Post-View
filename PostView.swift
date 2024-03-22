//
//  PostView.swift
//  Instagram
//
//  Created by Amarachi Akunna Onyekachi on 3/21/24.
//

import SwiftUI

struct PostView: View {
    // State variables to track like, bookmark status, and likes count
    @State private var isLiked = false
    @State private var isBookmarked = false
    @State private var likes = 233
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                // User profile image
                Image("me")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(Circle())
                
                // Username
                Text("akunna1")
                    .font(.subheadline)
                    .bold()
                
                Spacer()
                
                // Ellipsis button for more options
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            // End of HStack
            
            // Post image
            Image("puffpuff")
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 16) {
                    // Like button
                    Button {
                        isLiked.toggle()
                        if isLiked {
                            likes += 1
                        } else {
                            likes -= 1
                        }
                    } label: {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                    }
                    .foregroundStyle(isLiked ? .red : .primary)
                    
                    // Comment button
                    Image(systemName: "message")
                    
                    // Share button
                    Image(systemName: "paperplane")
                    
                    Spacer()
                    
                    // Bookmark button
                    Button {
                        isBookmarked.toggle()
                    } label: {
                        Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                    }
                    .foregroundStyle(.primary)
                }
                .font(.title2)
                // End of HStack
                
                // Likes count
                Text("\(likes) likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                // Post caption
                Text("**akunna1** Just finished making some delicious nigerian 🇳🇬 puff puff! #myfavorite ❤️😊😊")
                    .font(.footnote)
                
                // Post caption
                Text("View all 26 comments...")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                
                HStack {
                    // User profile image
                    Image("magneto")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .clipShape(Circle())
                    
                    // Username
                    Text("Add a comment...")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                // End of HStack
                
                // Post time
                Text("14 hours ago")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 8)
            // End of VStack
        }
        // End of VStack
    }
    // End of body
}
// End of struct

#Preview {
    PostView()
}
// End of Preview
