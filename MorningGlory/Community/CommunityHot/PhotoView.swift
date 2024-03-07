//
//  PhotoView.swift
//  Image Gallery
//
//  Created by 张原溥 on 2021/11/26.
//

import SwiftUI
import SDWebImageSwiftUI

struct PhotoView: View {
    @State private var like = false
    
    var imageDetail:ImageDetails
    
    var body: some View {
        ZStack(alignment: .bottom){
            AnimatedImage(url: URL(string: imageDetail.urls.thumb))
                .resizable()
                .aspectRatio(contentMode:.fill)
                .clipShape(RoundedRectangle(cornerRadius: 8.0))
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
            HStack(alignment: .center){
                AnimatedImage(url: URL(string: imageDetail.user.profileImage.large ?? ""))
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading){
                    Text(imageDetail.user.username ?? "")
                        .font(.system(size: 16.0,weight: .semibold,design: .rounded))
                    Group{
                        if imageDetail.description != nil {
                            Text(imageDetail.description ?? "")
                                .lineLimit(2)
                                .font(.system(size: 14.0, weight: .medium, design: .rounded))
                        }
                    }
                }
                Spacer()
                
                Image(systemName: like ? "heart.fill":"heart")
                    .onTapGesture {
                        self.like.toggle()
                    }
                Text(like ? "\(imageDetail.likes+1)" : "\(imageDetail.likes)")
            }
            .padding(20.0)
            .background(Color.white.opacity(0.5))
            .cornerRadius(8.0)
        }
        .padding(2)
        .foregroundColor(.white)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static let url = "https://images.unsplash.com/photo-1461988320302-91bde64fc8e4?ixid=2yJhcHBfaWQiOjEyMDd9&fm=jpg&fit=crop&w=1080&q=80&fit=max"
    
    static let profileURL = "https://images.unsplash.com/photo-1461988320302-91bde64fc8e4?ixid=2yJhcHBfaWQiOjEyMDd9&&fm=jpg&w=400&fit=max"
    
    static let imageDetails = ImageDetails(id: UUID().uuidString, likes: 123, description: "This is an description", user:User(username: "Username", id: UUID().uuidString, profileImage: ProfileImage(small: profileURL, medium: profileURL, large: profileURL)), urls: ImageURL(thumb: url, raw: url, full: url))
    
    static var previews: some View {
        PhotoView(imageDetail: imageDetails)
    }
}
