//
//  HearScope.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/20.
//

import SwiftUI

struct HearScope: View {
    
    @State var MakeSure = false
    @State private var Repeat = false
    @State private var percent: CGFloat = 30
    @State private var show  = false
    
    var body: some View {
        let progress = percent / 100
        
        ZStack {
            ZStack {
                
                Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                
                Image("Ellipse 14-1")
                    .offset(y:-150)
                    .scaleEffect(1.5)
                Image("Ellipse 39")
                    .offset(y:-200)
                    .scaleEffect(1.5)
                Image("Ellipse 39-1")
                    .offset(x: -50, y: 200)
                    .scaleEffect(1.5)
                VStack {
                    ZStack {
                        HStack {
                            VStack(alignment: .center, spacing: 50.0) {
                                Text("测试结果")
                                    .font(.system(size: 20,weight: .bold,design:.default))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                                    
                                
                                ZStack {
                                    Circle()
                                        .stroke(Color.white,style: StrokeStyle(lineWidth:35))
                                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(color:Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1), radius: 2,x:-3, y: 10)
                                    Circle()
                                        .trim(from: show ? 1 :progress, to: 1.0)
                                        .stroke(
                                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3333333333, green: 0.2, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.1450980392, green: 0.5803921569, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2431372549, green: 0.862745098, blue: 0.9215686275, alpha: 1)),Color(#colorLiteral(red: 0.6470588235, green: 0.9960784314, blue: 0.7921568627, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading),
                                            style: StrokeStyle(lineWidth: 40, lineCap: .round, lineJoin:.round, miterLimit: .infinity, dash: [20,0], dashPhase: 0)
                                        )
                                    
                                        .rotationEffect(Angle(degrees: 160))
                                        //.rotation3DEffect(Angle(degrees: 180),axis: (x: 1, y: 0, z: 0))
                                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(color: Color(#colorLiteral(red: 0.3333333333, green: 0.2, blue: 1, alpha: 1)).opacity(0.2), radius: 8, x: 0, y: 3)
                                        .animation(.easeInOut)
                                    
                                    VStack(alignment: .center, spacing: 8.0) {
                                        Text("\(Int(percent)) dB")
                                            .font(.system(size: 32,weight: .bold,design:.default))
                                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.2, blue: 1, alpha: 1)))
                                            .shadow(color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 2,x:0, y: 3)
                                            .frame(width: 100, height: 50)
                                            .onTapGesture {
                                                self.show.toggle()
                                            }
                                            
                                        Text("HL")
                                            .font(.system(size: 20,weight: .semibold))
                                            .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 2.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }
                        .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height / 2.5)
                        Image("explaining")
                            .frame(width: 200, height: 400)
                            .offset(x: 50, y:-50)
                    }
                    VStack(alignment: .leading, spacing: 20.0) {
                        Text("你的听力范围")
                            .font(.system(size: 32,weight: .bold,design:.default))
                            .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                        Text("您的听力阈值在\(Int(percent))分贝以下，\n属于轻度听障的范围")
                            .font(.system(size: 20,weight: .regular,design:.default))
                            .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                    }
                    .frame(width: UIScreen.main.bounds.width - 100, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack {
                        Button(action: {self.MakeSure.toggle()}){
                            Text("确认结果")
                                .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                                .frame(width: 120, height: 40)
                                //.foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                                
                                .overlay(
                                     RoundedRectangle(cornerRadius: 8, style: .continuous)
                                         .stroke(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)), lineWidth: 1)
                                )
                                .padding(.leading,-10)
                                .offset(x:10)
                        }
                        Spacer()
                        Button(action: {self.Repeat.toggle()}){
                            Text("重新测试")
                                .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                                .frame(width: 120, height: 40)
                                //.foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                                
                                .overlay(
                                     RoundedRectangle(cornerRadius: 8, style: .continuous)
                                         .stroke(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)), lineWidth: 1)
                                )
                                .padding(.leading,-10)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 130)
                }
            }
            .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
            
            if MakeSure{
                HearResult()
                    .transition(.scale)
                    .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0).delay(0.3))
            }
        }
    }
}

struct HearScope_Previews: PreviewProvider {
    static var previews: some View {
        HearScope()
    }
}
