//
//  MyText.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct MyTest: View {
    @State private var return02 = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("Component 48")
                    .scaleEffect(y:2)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.2)
            
            .edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Button (action:{self.return02.toggle()}) {
                        Image(systemName: "arrow.left")
                            .scaleEffect(1.2)
                    }
                    Spacer()
                    Text("我的测试")
                        .font(.system(size: 20,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4688017368, blue: 0.8587283492, alpha: 1)))
                    Spacer()
                    Image("hua")
                }
                .frame(width: UIScreen.main.bounds.width - 50, height:40)
                
                Spacer()
                
                Image("下方人物")
                    .scaleEffect(1.5)
                
                HStack {
                            ZStack {
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0, green: 0.4985970259, blue: 1, alpha: 1)))
                                    .frame(width: (UIScreen.main.bounds.width - 80 )  / 2, height: 160)
                                    .cornerRadius(30)
                                    .shadow(color: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)).opacity(0.3),radius: 5,x:0,y:3)
                                
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                                    .frame(width: 3, height: 30)
                                    .offset(x: -70, y: -30)
                                VStack(alignment: .leading) {
                                    Text("发音考核")
                                        .font(.system(size: 20,weight: .medium, design: .rounded))
                                        .foregroundColor(.white)
                                        .offset(y: 10)
                                    Spacer()
                                    Text("声母韵母发音考核")
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
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                                    .frame(width: (UIScreen.main.bounds.width - 80 )  / 2, height: 160)
                                    .cornerRadius(30)
                                    .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)).opacity(0.3),radius: 5,x:0,y:3)
                                
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.1999745071, green: 0.2000150084, blue: 0.1999689043, alpha: 1)))
                                    .frame(width: 3, height: 30)
                                    .offset(x: -70, y: -30)
                                VStack(alignment: .leading) {
                                    Text("用语考核")
                                        .font(.system(size: 20,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.1999745071, green: 0.2000150084, blue: 0.1999689043, alpha: 1)))
                                        .offset(y: -5)
                                    Spacer()
                                    Text("模拟场景对话")
                                        .font(.system(size: 12,weight: .medium, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 0.1999745071, green: 0.2000150084, blue: 0.1999689043, alpha: 1)))
                                        .offset(y: -5)
                                }
                                .padding(.vertical, 20)
                                .frame(width: 150, height: 50, alignment: .center)
                                .offset(y:-30)
                                
                                Image("Rectangle 1")
                                    .offset(y:50)
                                Image("cast_connected")
                                    .offset(x: -30, y: 40)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 4.5, alignment: .center)
                
                Spacer()
                
                VStack(alignment: .center, spacing: 20.0) {
                    Image("历史记录-1")
                        .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
                        .offset(y: 80)
                    
                    Image("退出测试")
                }
            }
            .frame(width:  UIScreen.main.bounds.width - 50, height:  UIScreen.main.bounds.height - 250, alignment: .center)
            .offset(y: (-UIScreen.main.bounds.height) / 15)
            
            if return02{
                TrainingMenuView()
                    .transition(.move(edge: .top))
                    .animation(.easeInOut)
            }
        }
        .frame(width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
    }
}

struct MyTest_Previews: PreviewProvider {
    static var previews: some View {
        MyTest()
    }
}
