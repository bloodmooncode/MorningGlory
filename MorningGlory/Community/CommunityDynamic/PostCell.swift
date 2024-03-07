//
//  PostCell.swift
//  PostDemo
//
//  Created by xiaoyouxinqing on 1/6/20.
//  Copyright © 2020 xiaoyouxinqing. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    
    @State var presentComment: Bool = false
    @State var Transmit = false
    
    var bindingPost: Post {
        userData.post(forId: post.id)!
    }
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        var post = bindingPost
        return VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top, spacing: 5) {
                post.avatarImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
//                    .overlay(
//                        PostVIPBadge(vip: post.vip)
//                            .offset(x: 16, y: 16)
//                )
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(post.name)
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                        .lineLimit(1)
                    Text(post.date)
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                }
                .padding(.leading, 10)
                
                Spacer()
                
                Text("浏览200次")
                    .font(.system(size: 12,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.6477734447, green: 0.686894238, blue: 0.7595688105, alpha: 1)))
            }
            
            Text(post.text)
                .font(.system(size: 17))
            
            if !post.images.isEmpty {
                PostImageCell(images: post.images, width: UIScreen.main.bounds.width - 30)
            }
            
            HStack(spacing: 0) {
                Spacer()
                
                HStack {
                    Button(action: {self.Transmit.toggle()}){
                        Image(systemName:"arrowshape.turn.up.right")
                            .foregroundColor(.black)
                    }
                    Text("1K")
                        .font(.system(size: 14,weight: .medium, design: .rounded))
                }
                
                Spacer()
                
                PostCellToolbarButton(image: "message",
                                      text: post.commentCountText,
                                      color: .black)
                {
                    self.presentComment = true
                }
                .sheet(isPresented: $presentComment) {
                    CommentInputView(post: post)
                        .environmentObject(self.userData)
                }
                
                Spacer()
                
                PostCellToolbarButton(image: post.isLiked ? "heart.fill" : "heart",
                                      text: post.likeCountText,
                                      color: post.isLiked ? .red : .black)
                {
                    if post.isLiked {
                        post.isLiked = false
                        post.likeCount -= 1
                    } else {
                        post.isLiked = true
                        post.likeCount += 1
                    }
                    self.userData.update(post)
                }
                
                Spacer()
            }

            
            VStack {
                Text("instagram_handle等人评论了你")
                    .font(.system(size: 12,weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                Text("查看全部评论")
                    .font(.system(size: 14,weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.6532421112, green: 0.662550509, blue: 0.7228422761, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
            }
            
            Divider()
        }
        .padding(.horizontal, 15)
        .padding(.top, 15)
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return PostCell(post: userData.recommendPostList.list[0]).environmentObject(userData)
    }
}
