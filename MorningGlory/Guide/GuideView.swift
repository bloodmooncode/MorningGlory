//
//  GuideView01.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/20.
//

import SwiftUI

struct GuideView: View {
    @State var ZTQ  = true
    @State var RGEW  = true
    @State var KYTZ  = true
    @State var SYTZ  = true
    @State var TLZC  = true
    @State var num1  = 1
    @State var num2  = 1
    @State var num3  = 1
    @State var num4  = 1
    @State var num5  = 1
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .leading){
                ZStack {
                    Image("左上角装饰")
                        .frame(width: UIScreen.main.bounds.width - 50 , height:100)
                        .offset(x: 0, y: 30)
                        .scaleEffect(1.5)
                        .blur(radius: 40)
                    Image("音波框")
                        .frame(width: 107, height: 107)
                        .offset(x:100)
                    Image("音波")
                        .frame(width: 107, height: 107)
                        .offset(x:120)
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("请选择你的身份")
                        .font(.system(size: 32,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                    Text("为了您更好的用户体验，请选择一个符合您状况的身份")
                        .font(.system(size: 20,weight: .light, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                        .frame(width: UIScreen.main.bounds.width - 100, height: 60)
                }

                VStack(alignment: .center, spacing: 30.0) {
                    Button("助听器佩戴者"){
                        self.ZTQ.toggle()
                        num1 = num1 + 1
                        //print("num1 = ", num1)
                        if(num2 % 2 == 0 )
                        {
                            self.RGEW.toggle()
                            num2 = 1
                        }
                        if(num3 % 2 == 0 )
                        {
                            self.KYTZ.toggle()
                            num3 = 1
                        }
                        if(num4 % 2 == 0 )
                        {
                            self.SYTZ.toggle()
                            num4 = 1
                        }
                        if(num5 % 2 == 0)
                        {
                            self.TLZC.toggle()
                            num5 = 1
                        }
                        
                    }
                    .buttonStyle(LoginButtonStyle(state: self.ZTQ))
                    //Text("助听器佩戴者")
                    
                    Button("人工耳蜗佩戴者"){
                        self.RGEW.toggle()
                        num2 = num2 + 1
                        //print("num2 = ", num2)
                        if(num1 % 2 == 0)
                        {
                            self.ZTQ.toggle()
                            num1 = 1
                        }
                        if(num3 % 2 == 0)
                        {
                            self.KYTZ.toggle()
                            num3 = 1
                        }
                        if(num4 % 2 == 0)
                        {
                            self.SYTZ.toggle()
                            num4 = 1
                        }
                        if(num5 % 2 == 0)
                        {
                            self.TLZC.toggle()
                            num5 = 1
                        }
                    }
                    .buttonStyle(LoginButtonStyle(state: self.RGEW))
                    //Text("人工耳蜗佩戴者")
                    Button("口语听障者"){
                        self.KYTZ.toggle()
                        num3 = num3 + 1
                        if(num1 % 2 == 0)
                        {
                            self.ZTQ.toggle()
                            num1 = 1
                        }
                        if(num2 % 2 == 0)
                        {
                            self.RGEW.toggle()
                            num2 = 1
                        }
                        if(num4 % 2 == 0)
                        {
                            self.SYTZ.toggle()
                            num4 = 1
                        }
                        if(num5 % 2 == 0)
                        {
                            self.TLZC.toggle()
                            num5 = 1
                        }
                    }
                    .buttonStyle(LoginButtonStyle(state: self.KYTZ))
                    //Text("口语听障者")
                    Button("手语听障者"){
                        self.SYTZ.toggle()
                        num4 = num4 + 1
                        if(num1 % 2 == 0)
                        {
                            self.ZTQ.toggle()
                            num1 = 1
                        }
                        if(num3 % 2 == 0)
                        {
                            self.KYTZ.toggle()
                            num3 = 1
                        }
                        if(num2 % 2 == 0)
                        {
                            self.RGEW.toggle()
                            num2 = 1
                        }
                        if(num5 % 2 == 0)
                        {
                            self.TLZC.toggle()
                            num5 = 1
                        }
                    }
                    .buttonStyle(LoginButtonStyle(state: self.SYTZ))
                    //Text("手语听障者")
                    Button("听力正常者"){
                        self.TLZC.toggle()
                        num5 = num5 + 1
                        if(num1 % 2 == 0)
                        {
                            self.ZTQ.toggle()
                            num1 = 1
                        }
                        if(num3 % 2 == 0)
                        {
                            self.KYTZ.toggle()
                            num3 = 1
                        }
                        if(num4 % 2 == 0)
                        {
                            self.SYTZ.toggle()
                            num4 = 1
                        }
                        if(num2 % 2 == 0)
                        {
                            self.RGEW.toggle()
                            num2 = 1
                        }
                    }
                    .buttonStyle(LoginButtonStyle(state: self.TLZC))
                    //Text("听力正常者")
                }
                .font(.system(size: 20,weight: .bold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                .padding(.vertical)
                .frame(width: UIScreen.main.bounds.width - 50 , height:350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                ExtraButton()
                    
            }
            .frame(width: UIScreen.main.bounds.width - 50 , height:UIScreen.main.bounds.height - 180)
        }
        .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height)
    }
}

struct GuideView01_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}

struct LoginButtonStyle: ButtonStyle{

    var state: Bool
    var normalColor:Color  = Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
    var alternateColor: Color = Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
    var disabledColor: Color = Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1))
    
    func makeBody(configuration:Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(state ? (configuration.isPressed ? alternateColor : normalColor): disabledColor)
    }
}
