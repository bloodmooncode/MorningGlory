//
//  TopbarView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct TopbarView: View {
    
    @State var Talk = false
    @State var Indentify = false
    
    var body: some View {
        ZStack {
            Image("Ellipse 41")
                .offset(x: 20,y: -100)
                .scaleEffect(2)
                .blur(radius: 20)
            
            VStack {
                HStack {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.black)
                    Spacer()
                    Text("快捷对话")
                        .font(.system(size: 20,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                    Spacer()
                    Image("Library")
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                HStack {
                    VStack(alignment: .center, spacing: 5.0) {
                        Button(action: {self.Talk.toggle()}){
                            Text("快捷对话")
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
                        Text("距离小于等于0.4米")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                    }
                    
                    Spacer()
                    VStack (alignment: .center, spacing: 5.0){
                        Button(action: {self.Indentify.toggle()}){
                            Text("场景音识别")
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
                        Text("距离小于等于4米")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 130)
               
                Image("Frame 272")
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 100, alignment: .center)
            
        }
    }
}

struct TopbarView_Previews: PreviewProvider {
    static var previews: some View {
        TopbarView()
    }
}
