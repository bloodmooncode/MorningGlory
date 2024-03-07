//
//  FirstBarrier.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct FirstBarrier: View {
    
    @State var ButtonPlayer = false
    @State var return06 = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("student-team-meeting-at-table 1")
                    .scaleEffect(1.1)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).opacity(0.4)
                    .frame(width: UIScreen.main.bounds.width, height: 800, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("第一关")
                    .font(.system(size: 20,weight: .bold, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                List{
                    Text("不好意思，请问下一趟班车还要多久到")
                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .leading)
                    Text("你好，我在下一站（自定义）下车，谢谢")
                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .leading)
                    Text("请问，（自定义）站台在哪边")
                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .leading)
                    Text(" 您好，我需要帮助（自定义），谢谢").frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .leading)
                        
                    Text("敬请期待")
                        .frame(width: UIScreen.main.bounds.width - 50, height: 80, alignment: .leading)
                }
                .font(.system(size: 12,weight: .bold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image("滚动训练按钮")
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack {
                VStack(spacing: 30.0) {
                    HStack {
                        
                        Button(action:{self.return06.toggle()}) {
                            Image(systemName: "arrow.left")
                        }
                        Spacer()
                        Image(systemName: "star")
                    }
                    .padding(.horizontal, 15)
                    .frame(height:10)
                    Text("您好，我想询问车次")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                    
                    HStack(alignment: .bottom) {
                        VStack(alignment: .center) {
                            Button(action:{self.ButtonPlayer.toggle()}) {
                                Image(systemName: "play")
                                    .resizable()
                                    .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 12,weight: .medium))
                            }
                            Text("播放")
                        }
                        .frame(width: 80, height: 80, alignment: .center)
                        
                        VStack(alignment: .center) {
                            Image(systemName: "mic")
                                .resizable()
                                .frame(width: 20, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .font(.system(size: 12,weight: .medium))
                            Text("录音")
                        }
                        .frame(width: 80, height: 80, alignment: .center)
                        
                        VStack(alignment: .center) {
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .font(.system(size: 12,weight: .medium))
                            Text("设置")
                        }
                        .frame(width: 80, height: 80, alignment: .center)
                    }
                    .font(.system(size: 12,weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width / 1.5, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(
                         RoundedRectangle(cornerRadius: 40, style: .continuous)
                             .stroke(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)), lineWidth: 1)
                    )
                }
                .frame(width: UIScreen.main.bounds.width - 60, height: 230, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(20)
                .shadow(radius:5 ,y: 5)
                Spacer()
            }
            .frame(height: UIScreen.main.bounds.height / 1.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            if ButtonPlayer{
                FirstBarrierContent()
                    .transition(.move(edge:.top))
                    .animation(.easeInOut)
            }
            
            if return06{
                TrainingBarrier()
                    .edgesIgnoringSafeArea(.bottom)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}

struct FirstBarrier_Previews: PreviewProvider {
    static var previews: some View {
        FirstBarrier()
    }
}
