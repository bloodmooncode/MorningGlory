//
//  TrainingView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct TrainingMenuView: View {
    @State private var practice = false
    @State private var test = false
    @State private var Voicetraining = false
    @State private var Voicedaily = false
    @State private var MineResult = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            ZStack {
                
                Image("Union")
                    .offset(y:70)
                    .scaleEffect(1.1)
                VStack {
                    onecard()
                    twocard()
                    
                    
                    HStack {
                        Button (action:{self.practice.toggle()}){
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
                                    Text("我的练习")
                                        .font(.system(size: 20,weight: .medium, design: .rounded))
                                        .foregroundColor(.white)
                                        .offset(y: 10)
                                    Spacer()
                                    Text("记得练习和收藏")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(.white)
                                        .offset(y:5)
                                }
                                .frame(width: 150, height: 50, alignment: .center)
                                .offset(y:-40)
                                
                                Image("Star 4")
                                    .offset(y:40)
                                Image("Vector")
                                    .offset(x: -30, y: 30)
                            }
                        }
                        
                        Spacer()
                        
                        Button (action:{self.test.toggle()}){
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
                                    Text("我的测试")
                                        .font(.system(size: 20,weight: .medium, design: .rounded))
                                        .foregroundColor(.white)
                                        .offset(y: -5)
                                    Spacer()
                                    Text("测试预约和结果统计")
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
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 4.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    HStack {
                        Button (action:{self.MineResult.toggle()}) {
                            fivecard()
                        }
                        Spacer()
                        sixcard()
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 5)
                    eightcard()
                    HStack {
                        Button (action:{self.Voicetraining.toggle()}) {
                            ninecard()
                        }
                        Spacer()
                        Button (action:{self.Voicedaily.toggle()}) {
                            tencard()
                        }
                        
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 7.5)
                }
                
                if practice{
                    MyPracticeMenuView()
                        .transition(.scale)
                        .animation(.easeInOut)
                }
                
                if test{
                    MyTest()
                        .transition(.scale)
                        .animation(.easeInOut)
                }
                
                if Voicetraining{
                    OccasionTraining()
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut)
                }
                
                if MineResult{
                    FirstScore()
                        .transition(.move(edge: .leading))
                        .animation(.easeInOut)
                }
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct TrainingMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingMenuView()
    }
}

struct onecard: View {
    var body: some View {
        HStack{
            Spacer()
            Text("语训")
                .font(.system(size: 20,weight:.bold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
            Spacer()
            Image("hua")
        }
        .frame(width: UIScreen.main.bounds.width - 50, height:40)
    }
}

struct twocard: View {
    var body: some View {
        VStack {
            HStack{
                Image("Group 104")
                
                VStack(alignment: .leading,spacing:20) {
                    VStack(alignment: .leading,spacing: 8) {
                        Text("昵称：鹿小葵")
                            .font(.system(size: 12,weight:.bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                        Text("用户等级：普通用户，建议购买超级语训vip")
                            .font(.system(size: 12,weight:.bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                    }
                    Text("使用帮助")
                        .font(.system(size: 12,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.533274889, green: 0.5333679914, blue: 0.5332617164, alpha: 1)))
                        .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)), lineWidth: 1)
                        )
                        .padding(.leading)
                        .offset(x:-13)
                    
                }
                
            }
            .frame(width: UIScreen.main.bounds.width - 30, height: 100.0)
           
        }
    }
}

struct fivecard: View {
    var body: some View {
        
                VStack(alignment: .leading) {
                    VStack {
                        Text("我的成就")
                            .font(.system(size: 20,weight:.bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                        Text("24/48")
                            .font(.system(size: 32,weight:.regular))
                            .foregroundColor(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                    }
                    .frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.height / 10, alignment: .leading)
                        
                    ZStack {
                        Circle()
                            .stroke(
                                Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)).opacity(0.5),
                                style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin:.round, miterLimit: .infinity, dash: [20,0], dashPhase: 0)
                            )
                            .frame(width: UIScreen.main.bounds.width / 6.5, height: UIScreen.main.bounds.width / 6.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Circle()
                            .trim(from:0.5, to: 1.0)
                            .stroke(
                                Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)),
                                style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin:.round, miterLimit: .infinity, dash: [20,0], dashPhase: 0)
                            )
                        
                            .rotationEffect(Angle(degrees: 90))
                            .frame(width: UIScreen.main.bounds.width / 6.5, height: UIScreen.main.bounds.width / 6.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image("Icon-week 1")
                            .scaleEffect(1.3)
                    }
                    //.frame(width: 80, height: 80)
                    .offset(x:0,y:-20 )
                }
                
            
        .padding(.top,10)
        .frame(width: (UIScreen.main.bounds.width - 80 ) / 2, height: 160,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 0.9035378695, green: 0.1706489921, blue: 0.1312128007, alpha: 1)))
        .cornerRadius(30)
        .shadow(radius: 20)
    }
    }

struct sixcard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30.0) {
            
            HStack {
                Image("Clock Icon")
                Text("42")
                    .font(.system(size: 16,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                
                Text("hours")
                    .font(.system(size: 16,weight:.medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.431372549, green: 0.4745098039, blue: 0.5490196078, alpha: 1)))
            }

            HStack {
                Image("Lesson Icon")
                
                Text("31")
                    .font(.system(size: 16,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                Text("lessons")
                    .font(.system(size: 16,weight:.medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.431372549, green: 0.4745098039, blue: 0.5490196078, alpha: 1)))
                
            }

            HStack {
                Image("Level Icon")
                
                Text("Medium")
                    .font(.system(size: 16,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                Text("level")
                    .font(.system(size: 16,weight:.medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.431372549, green: 0.4745098039, blue: 0.5490196078, alpha: 1)))
            }
            
        }
        .frame(width: (UIScreen.main.bounds.width - 80 ) / 2, height: 160, alignment: .trailing)
    }
}

struct eightcard: View {
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 38)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3, x:2, y:2)
                    .opacity(1)
                Text("订阅")
                    .font(.system(size: 16,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
            }
                
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 38)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3, x:2, y:2)
                    .opacity(0.01)
                Text("推荐")
                    .font(.system(size: 16,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
            }
            
        }
        .frame(width: UIScreen.main.bounds.width / 1.5, height: 40,alignment: .center)
        .frame(width: UIScreen.main.bounds.width - 80 , height: 40)
        .background(Color(#colorLiteral(red: 0.9212843776, green: 0.9360860586, blue: 0.9457122684, alpha: 1)))
        .cornerRadius(20)
    }
}

struct ninecard: View {
    var body: some View {
        
        ZStack {
            Image("Mask Group")
                .offset(x: -7)
            VStack(alignment: .leading) {
                Text("发音训练")
                    .font(.system(size: 20 ,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Text("评定发音水平纠正发音")
                    .font(.system(size: 12 ,weight:.semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Image("Frame 71")
            }
            
        }
        .frame(width: (UIScreen.main.bounds.width - 80 ) / 2, height: 100)
        .background(Color(#colorLiteral(red: 1, green: 0.1731708646, blue: 0.3343270421, alpha: 1)))
        .cornerRadius(10)
    }
}

struct tencard: View {
    var body: some View {
        
        ZStack {
            Image("Mask Group-2")
            VStack(alignment: .leading) {
                Text("日常用语")
                        .font(.system(size: 20 ,weight:.semibold))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Text("场景化训练:模拟真实对话")
                        .font(.system(size: 12 ,weight:.semibold))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Image("Frame 71-1")
            }
            
        }
        .frame(width: (UIScreen.main.bounds.width - 80 ) / 2, height: 100)
        .background(Color(#colorLiteral(red: 1, green: 0.5774406791, blue: 0.08020731062, alpha: 1)))
        .cornerRadius(10)
    }
}

