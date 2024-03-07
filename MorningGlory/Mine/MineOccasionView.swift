//
//  MineOccasionView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/26.
//

import SwiftUI

struct MineOccasionView: View {
    @State var return09 = false
    @State var StartFunc = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Image("student-team-meeting-at-table 1-1")
                        .scaleEffect(1.1)
                        .offset(y:20)
                    Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
                        .opacity(0.4)
                        .mask(Image("student-team-meeting-at-table 1-1"))
                        .scaleEffect(1.1)
                    VStack(spacing: 20.0) {
                        HStack(alignment: .center) {
                            Button(action:{self.return09.toggle()}) {
                                Image(systemName:"arrow.left")
                            }
                            Spacer()
                            Text("场景音识别")
                                .font(.system(size: 20,weight:.bold))
                            Spacer()
                            Image("Settings-1")
                        }
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .frame(width: UIScreen.main.bounds.width - 50, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image("Frame 1490")
                        
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 4)
                
                VStack{
                VStack {
                    HStack(alignment: .center) {
                        VStack {
                            Text("需识别信息录用")
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            Text("录入需要识别的调段/音频")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                        }
                        Spacer()
                        Text("使用帮助")
                            .font(.system(size: 12,weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                            .padding(.horizontal , 10)
                            .padding(.vertical,5)
                            .overlay(
                                 RoundedRectangle(cornerRadius: 15, style: .continuous)
                                     .stroke(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)), lineWidth: 1)
                            )
                    }
                    .frame(width: UIScreen.main.bounds.width - 50 , height: 50)
                    
                    HStack {
                        Text("关联穿戴设备")
                            .padding(.horizontal , 10)
                            .padding(.vertical,5)
                            .overlay(
                                 RoundedRectangle(cornerRadius: 15, style: .continuous)
                                     .stroke(Color(#colorLiteral(red: 0.07203388959, green: 0.4481371045, blue: 1, alpha: 1)), lineWidth: 1)
                            )
                            .font(.system(size: 12,weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.07203388959, green: 0.4481371045, blue: 1, alpha: 1)))
                        Spacer()
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50 , height: 80)
                
                VStack(alignment: .center, spacing: 20.0){
                    ZStack {
                        Image("Group 19")
                            .frame(width:UIScreen.main.bounds.width - 50 , height: 80)
                            .offset(y: 15)
                            .shadow(radius: 5)
                        HStack {
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("已录用1-上课铃声")
                                    .font(.system(size: 20,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                                Text("2020/06/30")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                            }
                            
                            Spacer()
                            
                            Image("按钮04")
                                .frame(width: 60, height: 60)
                                .offset(x: -30,y:80)
                        }
                        .frame(width: UIScreen.main.bounds.width - 80 , height: 80)
                    }
                    
                    ZStack {
                        Image("Group 19")
                            .frame(width:UIScreen.main.bounds.width - 50 , height: 80)
                            .offset(y: 15)
                            .shadow(radius: 5)
                        HStack {
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("已录用2-汽车鸣笛")
                                    .font(.system(size: 20,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                                Text("2020/05/28")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                            }
                            
                            Spacer()
                            
                            Image("按钮04")
                                .frame(width: 60, height: 60)
                                .offset(x: -30,y:80)
                        }
                        .frame(width: UIScreen.main.bounds.width - 80 , height: 80)
                    }
                    
                    ZStack {
                        Image("Group 19-1")
                            .frame(width:UIScreen.main.bounds.width - 50 , height: 80)
                            //.offset(y: 15)
                            .shadow(radius: 5)
                        HStack {
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("待录用")
                                    .font(.system(size: 20,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.533274889, green: 0.5333679914, blue: 0.5332617164, alpha: 1)))
                                Text("更多新的识别信息")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.533274889, green: 0.5333679914, blue: 0.5332617164, alpha: 1)))
                            }
                            
                            Spacer()
                            
                            Image("按钮05")
                                .frame(width: 60, height: 60)
                                .offset(x: -30,y:80)
                        }
                        .frame(width: UIScreen.main.bounds.width - 80)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 3)
                
                HStack {
                    Text("全部选用")
                        .padding(.horizontal , 10)
                        .padding(.vertical,5)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.07203388959, green: 0.4481371045, blue: 1, alpha: 1)), lineWidth: 1)
                        )
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.07203388959, green: 0.4481371045, blue: 1, alpha: 1)))
                    Spacer()
                        
                }
                .frame(width: UIScreen.main.bounds.width - 50 , height: 30)
                
                VStack(spacing: 20.0) {
                    Button (action:{self.StartFunc.toggle()}){
                        Image("启用功能")
                            .frame(width: UIScreen.main.bounds.width - 50, height:50)
                            .offset(y: 50)
                    }
                    Image("关闭功能")
                }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.4)
                .padding(.vertical, 20)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(40)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            if return09{
                MineView()
                    .transition(.move(edge: .top))
                    .animation(.easeInOut)
            }
            
            if StartFunc{
                MineContactSuccess()
                    .transition(.scale)
                    .animation(.easeInOut)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct MineOccasionView_Previews: PreviewProvider {
    static var previews: some View {
        MineOccasionView()
    }
}
