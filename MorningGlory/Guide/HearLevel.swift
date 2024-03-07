//
//  HearLevel.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/20.
//

import SwiftUI

struct HearLevel: View {
    
    @State var Start = false
    @State private var Repeat = false
    
    var body: some View {
        ZStack {
            ZStack {
                
                Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                    
                Image("Ellipse 36")
                    .offset(x: 0, y: -120)
                    .scaleEffect(2)
                    .blur(radius: 50)
                Image("Base-1")
                    .offset(x: -180, y: 150)
                    .blur(radius: 30)
                VStack {
                    ZStack {
                        Image("Voice Wave - Dark")
                            .scaleEffect(x: 1.08, y: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image("discussing")
                            .offset(x: 50)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading, spacing: 15.0) {
                        Text("测试你的听力水平")
                            .font(.system(size: 32,weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                        Text("通过测试听力水平匹配\n最佳助听辅助服务")
                            .font(.system(size: 20,weight: .light, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width / 1.5, height: 50, alignment: .leading)
                    
                        HStack {
                            Button(action: {self.Start.toggle()}){
                                Text("开始测试")
                            }
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
                            Spacer()
                            Button(action: {self.Start.toggle()}){
                                Text("重新测试")
                            }
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
                        .frame(width: UIScreen.main.bounds.width - 130)
                        
                    }
                    .frame(width: UIScreen.main.bounds.width - 100, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            if Start{
                HearScope()
                    //.offset(y:-300)
                    .transition(.move(edge: .top))
                    .animation(.spring().delay(0.3))
            }
        }
    }
}

struct HearLevel_Previews: PreviewProvider {
    static var previews: some View {
        HearLevel()
    }
}
