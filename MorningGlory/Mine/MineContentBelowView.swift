//
//  MineContentBelowView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/26.
//

import SwiftUI

struct MineContentBelowView: View {
    var body: some View {

            VStack(alignment: .center, spacing: 20.0) {
                HStack(alignment: .center, spacing: 60.0) {
                    VStack(alignment: .center) {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("关注")
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                    VStack(alignment: .center)  {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("动态")
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4993512034, blue: 1, alpha: 1)))
                    VStack(alignment: .center) {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("粉丝")
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                }
                
                HStack(alignment: .center, spacing: 20.0) {
                    Text("参与活动")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(height: 24, alignment: .center)
                        .padding(.horizontal , 10)
                        .background(Color(#colorLiteral(red: 0.2360943556, green: 0.3501724005, blue: 1, alpha: 1)))
                        .cornerRadius(12)
                    Text("经验分享")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                        .frame(height: 24, alignment: .center)
                        .padding(.horizontal , 10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)), lineWidth: 1)
                        )
                    Text("安利")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                        .frame(height: 24, alignment: .center)
                        .padding(.horizontal , 10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)), lineWidth: 1)
                        )
                    HStack {
                        Text("查看全部标签")
                        Image(systemName: "chevron.right")
                    }
                    .font(.system(size: 12,weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                }
                
                ScrollView (showsIndicators: false){
                    
                    VStack {
                        
                        HStack(alignment: .top) {
                            VStack {
                                Image("6_30")
                                Spacer()
                            }
                            VStack {
                                
                                
                                VStack(alignment: .leading, spacing: 6.0) {
                                    HStack {
                                        Text("每日分享")
                                            .font(.system(size: 16,weight: .medium, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        Spacer()
                                        Text("浏览200次")
                                            .font(.system(size: 12,weight: .medium, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.6901960784, blue: 0.7529411765, alpha: 1)))
                                    }
                                    .frame(width: UIScreen.main.bounds.width -  110, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                    Text("今天10:00")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.6901960784, blue: 0.7529411765, alpha: 1)))
                                    Text("今天和去年认识的互助小组一起出去玩")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                }
                                Image("Media")
                                HStack(alignment: .center, spacing: 30.0) {
                                    Text("177点赞")
                                        .font(.system(size: 18,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2102267742, green: 0.3604983687, blue: 0.9971488118, alpha: 1)))
                                    Spacer()
                                    Image(systemName: "arrow.up.forward.app")
                                        .scaleEffect(1.5)
                                    Image(systemName: "hand.thumbsup")
                                        .scaleEffect(1.5)
                                    Image(systemName: "bubble.left")
                                        .scaleEffect(1.5)
                                }
                                .foregroundColor(Color(#colorLiteral(red: 0.6532421112, green: 0.662550509, blue: 0.7228422761, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width - 110, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                VStack {
                                    Text("instagram_handle等人评论了你")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                    Text("向日葵：哇这么多人，你去哪里玩呀")
                                        .font(.system(size: 16,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                    Text("查看全部评论")
                                        .font(.system(size: 14,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.6532421112, green: 0.662550509, blue: 0.7228422761, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Divider()
                            .frame(width: UIScreen.main.bounds.width - 50,height:  20)
                        
                        HStack(alignment: .top) {
                            VStack {
                                Image("6_29")
                                Spacer()
                            }
                            VStack {
                                
                                
                                VStack(alignment: .leading, spacing: 6.0) {
                                    HStack {
                                        Text("快来康康")
                                            .font(.system(size: 16,weight: .medium, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        Spacer()
                                        Text("浏览200次")
                                            .font(.system(size: 12,weight: .medium, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.6901960784, blue: 0.7529411765, alpha: 1)))
                                    }
                                    .frame(width: UIScreen.main.bounds.width -  110, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                    Text("今天10:00")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.6901960784, blue: 0.7529411765, alpha: 1)))
                                    Text("今年又有互助小组啦有没有江苏同学的面基")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                }
                                Text("查看全部")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2102267742, green: 0.3604983687, blue: 0.9971488118, alpha: 1)))
                                    .frame(width:UIScreen.main.bounds.width -  110 , height: 30, alignment: .leading)
                                
                                HStack(alignment: .center, spacing: 30.0) {
                                    Text("177点赞")
                                        .font(.system(size: 18,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2102267742, green: 0.3604983687, blue: 0.9971488118, alpha: 1)))
                                    Spacer()
                                    Image(systemName: "arrow.up.forward.app")
                                        .scaleEffect(1.5)
                                    Image(systemName: "hand.thumbsup")
                                        .scaleEffect(1.5)
                                    Image(systemName: "bubble.left")
                                        .scaleEffect(1.5)
                                }
                                .foregroundColor(Color(#colorLiteral(red: 0.6532421112, green: 0.662550509, blue: 0.7228422761, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width - 110, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                VStack {
                                    Text("instagram_handle等人评论了你")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                    Text("向日葵：江苏无锡举手")
                                        .font(.system(size: 16,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                    Text("查看全部评论")
                                        .font(.system(size: 14,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.6532421112, green: 0.662550509, blue: 0.7228422761, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Divider()
                            .frame(width: UIScreen.main.bounds.width - 50,height: 20)
                        
                        HStack(alignment: .top) {
                            VStack {
                                Image("6_28")
                                Spacer()
                            }
                            VStack {
                                
                                
                                VStack(alignment: .leading, spacing: 6.0) {
                                    HStack {
                                        Text("艺术展分享")
                                            .font(.system(size: 16,weight: .medium, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        Spacer()
                                        Text("浏览200次")
                                            .font(.system(size: 12,weight: .medium, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.6901960784, blue: 0.7529411765, alpha: 1)))
                                    }
                                    .frame(width: UIScreen.main.bounds.width -  110, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                    Text("前天10:00")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.6901960784, blue: 0.7529411765, alpha: 1)))
                                    Text("去年和互助小组一起去看的展，艺术人生-博物馆之旅")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                }
                                Image("Media Grid")
                                HStack(alignment: .center, spacing: 30.0) {
                                    Text("177点赞")
                                        .font(.system(size: 18,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2102267742, green: 0.3604983687, blue: 0.9971488118, alpha: 1)))
                                    Spacer()
                                    Image(systemName: "arrow.up.forward.app")
                                        .scaleEffect(1.5)
                                    Image(systemName: "hand.thumbsup")
                                        .scaleEffect(1.5)
                                    Image(systemName: "bubble.left")
                                        .scaleEffect(1.5)
                                }
                                .foregroundColor(Color(#colorLiteral(red: 0.6532421112, green: 0.662550509, blue: 0.7228422761, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width - 110, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                VStack {
                                    Text("instagram_handle等人评论了你")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                    Text("向日葵：哇haokan")
                                        .font(.system(size: 16,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                    Text("查看全部评论")
                                        .font(.system(size: 14,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.6532421112, green: 0.662550509, blue: 0.7228422761, alpha: 1)))
                                        .frame(width: UIScreen.main.bounds.width - 110, height: 30, alignment: .leading)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Divider()
                            .frame(width: UIScreen.main.bounds.width - 50,height:  20)
                    }
                }
                //.offset(x: -15)
                .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 1.5)
            .padding(.vertical, 10)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(40)
    }
}

struct MineContentBelowView_Previews: PreviewProvider {
    static var previews: some View {
        MineContentBelowView()
    }
}
