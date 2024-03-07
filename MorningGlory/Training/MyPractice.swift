//
//  MyPractice.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct MyPractice: View {
    
    @State var OccasionTrain = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    ScrollView {
                        
                        HStack {
                            Text("我收藏的练习")
                                .font(.system(size: 20,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            Spacer()
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, height: 40,alignment: .center)
                        
                        Practice01()
                        
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
                                Button (action:{self.OccasionTrain.toggle()}) {
                                    Image("按钮02")
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            
                        }
                        .frame(height: 110)
                        
                        Practice03()
                        
                        Image("Group 6786")
                        
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 1.5)
                    .padding(30)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(40)
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            if OccasionTrain{
                OccasionTraining()
                    .transition(.move(edge: .trailing))
            }
        }
    }
}

struct MyPractice_Previews: PreviewProvider {
    static var previews: some View {
        MyPractice()
    }
}

struct Practice01: View {
    var body: some View {
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
    }
}


struct Practice03: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8600290418, green: 0.8587779403, blue: 0.8797467351, alpha: 1))
                .mask(
                    Image("BG")
                        .scaledToFit()
                )
            Rectangle()
                .foregroundColor(Color(#colorLiteral(red: 0.9738571048, green: 0.9783636928, blue: 0.9893804193, alpha: 1)))
                .opacity(0.5)
                .mask(
                    Image("BG")
                        .scaledToFit()
                )
            
            HStack {
                VStack(alignment: .leading) {
                    Text("今天练习了吗")
                        .font(.system(size: 16,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                    //.padding(.vertical,1)
                    Text("不断学习和训练才能提升")
                        .font(.system(size: 12,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                        //.padding(.vertical,1)
                        .frame(width: 200, height: 20, alignment: .leading)
                    Text("等待更多练习")
                        //.lineLimit()
                        .font(.system(size: 20,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                        .frame(width: 200, height: 30, alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width / 3.3, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                Spacer()
                Image("按钮03")
                    .shadow(color:Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)).opacity(0.4),radius: 7,x:0, y:7)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
        }
        .frame(height: 110)
    }
}

struct TopView: View {
    var body: some View {
        HStack{
            Image(systemName: "arrow.left")
                .scaleEffect(1.2)
            Spacer()
            Text("我的练习")
                .font(.system(size: 20,weight:.bold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
            Spacer()
            Image(systemName: "calendar")
                .scaleEffect(1.5)
        }
        .frame(width: UIScreen.main.bounds.width - 50, height:40)
    }
}

struct ChooseView: View {
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 38)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(radius: 3, x:2, y:2)
                    .opacity(1)
                Text("收藏")
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
                Text("记录")
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
