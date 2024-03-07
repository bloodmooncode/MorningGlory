//
//  MineView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct MineView: View {
    
    @State var Next03 = false
    @State var IDtools = false
    @State var TrHistory = false
    @State private var Tag = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            Image("底层遮罩")
                .edgesIgnoringSafeArea(.all)
                .scaleEffect(1.1)
            
            VStack {
                Spacer()
                HStack {
                    ZStack {
                        Image("头像框")
                        Image("Group 104")
                            .scaleEffect(0.7)
                    }
                    VStack(alignment: .leading, spacing: 20.0) {
                        HStack(alignment: .top) {
                            Text("鹿小葵")
                                .font(.system(size: 24,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.1999762356, green: 0.200016588, blue: 0.1999709308, alpha: 1)))
                            
                            Spacer()
                            
                            HStack {
                                Button(action:{self.Next03.toggle()}) {
                                    Text("个人主页")
                                }
                                Image(systemName: "chevron.forward")
                            }
                            .font(.system(size: 12,weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.6288169622, green: 0.6431000829, blue: 0.7032963634, alpha: 1)))
                            
                        }
                        .frame(width: UIScreen.main.bounds.width - 150, alignment: .leading)
                        
                        HStack(spacing: 10.0) {
                            Text("学生党")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4980392157, blue: 1, alpha: 1)))
                                .frame(height: 30, alignment: .center)
                                .padding(.horizontal , 15)
                                .overlay(
                                     RoundedRectangle(cornerRadius: 15, style: .continuous)
                                         .stroke(Color(#colorLiteral(red: 0, green: 0.4983369708, blue: 1, alpha: 1)), lineWidth: 1)
                                )
                            Text("绘画")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4980392157, blue: 1, alpha: 1)))
                                .frame(height: 30, alignment: .center)
                                .padding(.horizontal , 15)
                                .overlay(
                                     RoundedRectangle(cornerRadius: 15, style: .continuous)
                                         .stroke(Color(#colorLiteral(red: 0, green: 0.4983369708, blue: 1, alpha: 1)), lineWidth: 1)
                                )
                            Text("旅游")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4980392157, blue: 1, alpha: 1)))
                                .frame(height: 30, alignment: .center)
                                .padding(.horizontal , 15)
                                .overlay(
                                     RoundedRectangle(cornerRadius: 15, style: .continuous)
                                         .stroke(Color(#colorLiteral(red: 0, green: 0.4983369708, blue: 1, alpha: 1)), lineWidth: 1)
                                )
                            Button(action: {
                                self.Tag.toggle()
                            }){
                                Image(systemName: "square.and.pencil")
                            }
                            
                        }
                    }
                }
                
                HStack(alignment: .center, spacing: 60.0) {
                    VStack(alignment: .center) {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("关注")
                    }
                    VStack(alignment: .center)  {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("动态")
                    }
                    VStack(alignment: .center) {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("粉丝")
                    }
                }
                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                
                ZStack {
                    Image("背景渐变")
                        .offset(x:-20,y:20)
                    Button(action:{self.IDtools.toggle()}) {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 10.0) {
                                HStack {
                                    Text("场景音识别工具")
                                        .font(.system(size: 20,weight:.bold))
                                    Image(systemName: "mic")
                                        .font(.system(size: 20,weight:.medium))
                                }
                                
                                Text("识别特定音段，关联震动提醒")
                                    .font(.system(size: 12,weight:.bold))
                            }
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            Spacer()
                            
                            Text("点击了解")
                                .font(.system(size: 12,weight:.bold))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 80, height: 30, alignment: .center)
                                .overlay(
                                     RoundedRectangle(cornerRadius: 15, style: .continuous)
                                         .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                )
                        }
                        .frame(width:UIScreen.main.bounds.width - 80,height: 80 )
                        .offset(x: -20, y: 10)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50,height: 80, alignment: .leading)
                .padding(.vertical, 20)
                
                Spacer()
                
                HStack(spacing: 10.0) {
                    Image("我的订阅")
                    Button(action:{self.TrHistory.toggle()}) {
                        Image("转译记录")
                    }
                }
                NavigationView {
                    List {
                        NavigationLink(destination: Text("Page1")){
                            HStack {
                                Image("Frame-1")
                                Text("我的客服")
                                    .font(.system(size: 16,weight:.bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .padding(.vertical,10)
                        }
                        
                        NavigationLink(destination: Text("Page2")){
                            HStack {
                                Image("Settings")
                                Text("我的设置")
                                    .font(.system(size: 16,weight:.bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .padding(.vertical,10)
                        }
                        
                        NavigationLink(destination: Text("Page2")){
                            HStack {
                                Image("Mail")
                                Text("意见反馈")
                                    .font(.system(size: 16,weight:.bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .padding(.vertical,10)
                        }
                        
                        
                        NavigationLink(destination: Text("Page2")){
                            HStack {
                                Image("Alert-info")
                                Text("关于我们")
                                    .font(.system(size: 16,weight:.bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            }
                            .padding(.vertical,10)
                        }
                    }
                    .navigationBarTitle(Text("其他服务"))
                    .listStyle(PlainListStyle())
                    //.padding()
                    .frame(width:UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height / 3)
                }
               
                .frame(width:UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 2)
                
            }
            .offset(y: 50)
            
            if Next03{
                MineContent()
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut)
            }
            if IDtools{
                MineOccasionView()
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
            
            if TrHistory{
                TranslationHistory()
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
            if Tag{
                TagTextView()
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
        .frame(width:UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 200)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView()
    }
}
