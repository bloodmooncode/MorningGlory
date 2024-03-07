//
//  HomePage.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/19.
//

import SwiftUI

struct HomePage: View {
    
    @State var voice = false
    @State var VoiceState = CGSize.zero
    @State var Environ = false
    @State var Write = false
    
    var body: some View {

        ZStack {
            Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            ScrollView (showsIndicators: false) {
                VStack(spacing: 5.0) {
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("上午好")
                                    .font(.system(size: 24,weight: .bold, design: .rounded))
                                Image("Fill 1")
                                
                            }
                            Text("亲爱的鹿小葵，你的花花很想你哦")
                                .font(.caption)
                                .foregroundColor(Color(#colorLiteral(red: 0.5529411765, green: 0.5529411765, blue: 0.5529411765, alpha: 1)))
                            //Color(#colorLiteral(red: 0.3529411765, green: 0.6901960784, blue: 0.9411764706, alpha: 0.9454858035))
                        }
                        Spacer()
                        Image(systemName: "magnifyingglass.circle")
                            .font(.system(size: 30,weight: .light, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                    }
                    .padding(.horizontal,15)
                    .offset(y:voice ? (-UIScreen.main.bounds.height) / 2.5: 0)
                    .animation(.easeInOut(duration: 1))
                    
                    Image("Frame 238")
                        .offset(y:voice ? (-UIScreen.main.bounds.height) / 2.5: 0)
                        .animation(.easeInOut(duration: 1))
                       
                    ZStack {
                        Image("BG")
                        Button(action: {self.voice.toggle()}){
                            STTButton()
                        }
                    }
                    .offset(x:voice ? (-UIScreen.main.bounds.width) : 0)
                    .animation(.easeInOut(duration: 1))
                    .onTapGesture {
                        self.voice.toggle()
                }
                    HStack {
                        Button(action:{self.Write.toggle()}) {
                            DrawTools()
                        }
                        Spacer()
                        Button(action:{self.Environ.toggle()}) {
                            VoiceIndentifer()
                        }
                    }
                    .offset(y:voice ? (UIScreen.main.bounds.height) / 2: 0)
                    .animation(.easeInOut(duration: 1))

                    Home()
                    .offset(y:voice ? (UIScreen.main.bounds.height) / 2: 0)
                    .animation(.easeInOut(duration: 1))

                }
                .frame(width: UIScreen.main.bounds.width - 50)
            }
            
            
            if voice{
                SpeechFunctionView()
                    .transition(.move(edge: .top))
                    .animation(.easeInOut)
            }
            
            if Write{
                WritingBoard()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
            
            if Environ{
                LongDistanceTranslationView(localeIdentifier: "zh_Hans_CN")
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut)
            }
        
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        //.offset(y:50)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

struct STTButton: View {
    
    var body: some View {
        ZStack {
            HStack {
                Image("Group 6853")
                VStack(alignment: .leading) {
                    HStack (alignment: .bottom){
                        Text("快捷对话")
                            .font(.system(size: 20,weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                        Text("智能降噪准确转译")
                            .font(.system(size: 12,weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                    }
                    Image("Graph")
                    Text("点击进入迅速语音转译，实现畅通对话")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(.white)
                }
                .offset(x:-10)
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
        }
    }
}

struct DrawTools: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.2117647059, green: 0.4980392157, blue: 0.9647058824, alpha: 1)))
                .frame(width: (UIScreen.main.bounds.width - 80 )  / 2, height: 150)
                .cornerRadius(30)
            
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                .frame(width: 3, height: 30)
                .offset(x: -70, y: -30)
            VStack(alignment: .leading) {
                Text("白板工具")
                    .font(.system(size: 20,weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                Spacer()
                Text("用于快捷书写记录交流")
                    .font(.system(size: 12,weight: .medium, design: .rounded))
                    .foregroundColor(.white)
            }
            .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(y:-40)
            
            Image("Star 4")
                .offset(y:30)
            Image("Vector")
                .offset(x: -30, y: 20)
        }
    }
}

struct VoiceIndentifer: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.3960784314, green: 0.6470588235, blue: 0.9725490196, alpha: 1)))
                .frame(width: (UIScreen.main.bounds.width - 80 )  / 2, height: 150)
                .cornerRadius(30)
            
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                .frame(width: 3, height: 30)
                .offset(x: -70, y: -30)
            VStack(alignment: .leading) {
                Text("远距离翻译")
                    .font(.system(size: 20,weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                Spacer()
                Text("用于辨别场景声音讯息")
                    .font(.system(size: 12,weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                Text("如：车站提示音广播等").font(.system(size: 12,weight: .medium, design: .rounded))
                    .foregroundColor(.white)
            }
            .padding(.vertical, 20)
            .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(y:-30)
            
            Image("Rectangle 1")
                .offset(y:40)
            Image("cast_connected")
                .offset(x: -30, y: 30)
        }
    }
}
