//
//  HearResult.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct HearResult: View {
    
    @State private var SureEnter = false
    @State private var Repeat = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                    .opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)),Color(#colorLiteral(red: 0.2631748422, green: 0.3010542301, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.3333333333, green: 0.2, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .mask(
                            Text("Congratulations!")
                                .font(.system(size: 32,weight: .bold,design:.default))
                    )
                        .frame(width: UIScreen.main.bounds.width - 100, height:50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("您可以将结果应用到助听功能\n模块更加适配您的使用")
                        .font(.system(size: 20,weight:.regular,design:.default))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    Image("Quick upload")
                    
                    Button(action: {self.SureEnter.toggle()}){
                        Image("确认进入")
                            .frame(width: UIScreen.main.bounds.width - 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(y: 80)
                    }
                    Button(action: {self.Repeat.toggle()}){
                        Text("重新选择")
                            .font(.system(size: 12,weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                            .frame(width:UIScreen.main.bounds.width - 100, height:30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 2.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 15,style: .continuous))
                .shadow(color:Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 3)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height )
            
            if SureEnter{
                MenuView()
                    .transition(.scale)
                    .animation(.easeInOut.delay(0.3))
            }
            
            if Repeat{
                HearLevel()
                    .transition(.move(edge: .leading))
                    .animation(.spring().delay(0.3))
            }
        }
    }
}

struct HearResult_Previews: PreviewProvider {
    static var previews: some View {
        HearResult()
    }
}
