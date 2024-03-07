//
//  PracticeHistory.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct PracticeHistory: View {
    var body: some View {
        VStack {
            Spacer()
            
            ScrollView( showsIndicators: false) {
                HStack {
                    Text("我的练习记录")
                        .font(.system(size: 20,weight:.semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 40,alignment: .center)
                
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0, green: 0.4985970259, blue: 1, alpha: 1)))
                            .frame(width: (UIScreen.main.bounds.width - 80 )  / 2, height: 160)
                            .cornerRadius(30)
                        
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                            .frame(width: 3, height: 30)
                            .offset(x: -70, y: -30)
                        VStack(alignment: .leading) {
                            Text("错题集")
                                .font(.system(size: 20,weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .offset(y: 10)
                            Spacer()
                            Text("记录错题")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .offset(y:5)
                        }
                        .frame(width: 150, height: 50, alignment: .center)
                        .offset(x: -20,y:-40)
                        
                        Image("Star 4")
                            .offset(y:40)
                        Image("Vector")
                            .offset(x: -30, y: 30)
                    }
                    Spacer()
                    ZStack {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.1187579706, green: 0.6524480581, blue: 1, alpha: 1)))
                            .frame(width: (UIScreen.main.bounds.width - 80 )  / 2, height: 160)
                            .cornerRadius(30)
                        
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                            .frame(width: 3, height: 30)
                            .offset(x: -70, y: -30)
                        VStack(alignment: .leading) {
                            Text("笔记本")
                                .font(.system(size: 20,weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .offset(y: -5)
                            Spacer()
                            Text("自定义知识要点整理")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .offset(y: -5)
                        }
                        .padding(.vertical, 20)
                        .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(y:-30)
                        
                        Image("Rectangle 1")
                            .offset(y:50)
                        Image("cast_connected")
                            .offset(x: -30, y: 40)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 4.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Image("Frame")
                    
                    DatePicker(selection: .constant(Date()), label: {})
                
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 12, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                ZStack {
                    Image("发音专题")
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
                        .opacity(0.5)
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("声母韵母识别")
                                .font(.system(size: 16,weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.vertical,2)
                            Text("发音巩固矫正")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.vertical,2)
                            Text("发音专题")
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Image("Frame 240")
                    }
                    .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                }
                .frame(height: 110)
                
                ZStack {
                    Image("日常用语")
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
                        .opacity(0.5)
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("场景化训练")
                                .font(.system(size: 16,weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.vertical,1)
                            Text("最全品类")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.vertical,1)
                            Text("日常用语收藏夹")
                                //.lineLimit()
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .frame(width: 200, height: 30, alignment: .leading)
                        }
                        .frame(width: UIScreen.main.bounds.width / 3.3, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                        Spacer()
                        Image("按钮02")
                    }
                    .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                }
                .frame(height: 110)
                
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 1.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(30)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(40)
            .edgesIgnoringSafeArea(.all)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct PracticeHistory_Previews: PreviewProvider {
    static var previews: some View {
        PracticeHistory()
    }
}
