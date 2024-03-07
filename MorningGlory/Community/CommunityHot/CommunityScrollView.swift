//
//  CommunityScrollView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI

struct CommunityScrollView: View {
    @State private var offset = CGSize.zero
    @StateObject var DownDrag = Drag()
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9388856292, green: 0.9711982608, blue: 0.9827591777, alpha: 1))
                .cornerRadius(40)
//            VStack {
//                Image("顶部光晕")
//                    .scaleEffect( 1.5)
//                Spacer()
//            }
//            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    Spacer()
                    Text("热门")
                        .font(.system(size: 20,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.1999745071, green: 0.2000150084, blue: 0.1999689043, alpha: 1)))
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width - 50, height:40, alignment: .center)
                //.offset(x: 20)
                
                
                //CommunitySearchBar(text: .constant(""))
                
                    //.offset(x: 20)
                
                VStack(alignment: .leading, spacing: 3.0) {
                    HStack {
                        ZStack {
                            Image("中部光晕")
                                .offset(x: 40, y: -10)
                            Text("热门话题")
                                .font(.system(size: 20,weight:.bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                        }
                        Spacer()
                        HStack {
                            Text("查看全部")
                            Image(systemName: "chevron.forward")
                        }
                        .font(.system(size: 12,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: .leading)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            VStack(alignment: .leading) {
                                Image("手语学习")
                                Text("手语学习")
                                    .font(.system(size: 16,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 3, height: 150)
                            
                            VStack(alignment: .leading) {
                                Image("团队合作")
                                    //.mask(Image("手语学习"))
                                    .frame(width: UIScreen.main.bounds.width / 3, height: 100, alignment: .center)
                                    .offset(x: -10,y:80)
                                Text(" 团队合作")
                                    .font(.system(size: 16,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                    .offset(y: 5)
                            }
                            .frame(width: UIScreen.main.bounds.width / 3, height: 150)
                            
                            VStack(alignment: .leading) {
                                Image("手语学习")
                                Text("手语学习")
                                    .font(.system(size: 16,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 3, height: 150)
                            
                            VStack(alignment: .leading) {
                                Image("团队合作")
                                    //.mask(Image("手语学习"))
                                    .frame(width: UIScreen.main.bounds.width / 3, height: 100, alignment: .center)
                                    .offset(x: -10,y:80)
                                Text(" 团队合作")
                                    .font(.system(size: 16,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                    .offset(y: 5)
                            }
                            .frame(width: UIScreen.main.bounds.width / 3, height: 150)
                            
                        }
                        .frame(height: 150)
                    }
                    .background(Color(#colorLiteral(red: 0.9388856292, green: 0.9711982608, blue: 0.9827591777, alpha: 1)))
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 4.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 20)
                
                
                VStack(alignment: .leading, spacing: 3.0) {
                    HStack {
                        ZStack {
                            Image("中部光晕")
                                .offset(x: 60, y: -10)
                            Text("宝藏用户安利")
                                .font(.system(size: 20,weight:.bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                        }
                        Spacer()
                        HStack {
                            Text("查看全部")
                            Image(systemName: "chevron.forward")
                        }
                        .font(.system(size: 12,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: .leading)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            VStack(alignment: .center) {
                                Image("宝藏用户01")
                                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("扣扣")
                                    .font(.system(size: 12,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 4.5, height: 120)
                            
                            VStack(alignment: .center) {
                                Image("宝藏用户02")
                                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("游戏解说K")
                                    .font(.system(size: 12,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 4.5, height: 120)
                            
                            VStack(alignment: .center) {
                                Image("宝藏用户03")
                                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("RICK-1")
                                    .font(.system(size: 12,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 4.5, height: 120)
                            
                            VStack(alignment: .center) {
                                Image("宝藏用户04")
                                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .offset(x: -10)
                                Text("一起出游")
                                    .font(.system(size: 12,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 4.5, height: 120)
                            
                            VStack(alignment: .center) {
                                Image("宝藏用户01")
                                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("扣扣")
                                    .font(.system(size: 12,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 4.5, height: 120)
                            
                            VStack(alignment: .center) {
                                Image("宝藏用户02")
                                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("游戏解说K")
                                    .font(.system(size: 12,weight:.bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 4.5, height: 120)
                            
                        }
                        .frame(height: 150)
                    }
                    .background(Color(#colorLiteral(red: 0.9388856292, green: 0.9711982608, blue: 0.9827591777, alpha: 1)))
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 4.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 20)
                
                
                CommunityBelowView()
                    .cornerRadius(40)
                    .offset(y:DownDrag.drag ? -UIScreen.main.bounds.height / 1.9 : 0)
                    .animation(.easeInOut)
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
            .offset(y: 20)
            .edgesIgnoringSafeArea(.bottom)
            
        }
        .environmentObject(DownDrag)
    }
}

struct CommunityScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityScrollView()
    }
}
