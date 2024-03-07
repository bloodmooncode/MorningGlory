//
//  LaunchView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/20.
//

import SwiftUI

struct LaunchView: View {
    @State private var show  = false
    @State private var IsEnter = false
    
    var body: some View {
        ZStack {
            ZStack {
                
                Image("Group 6857")
                    .edgesIgnoringSafeArea(.all)
                    .scaleEffect(1.1)
    //            SwiftUIGIFPlayerView(gifName: "curve")
    //                .scaleEffect(3)
    //            .frame(height:UIScreen.main.bounds.height / 3)
                VStack {
                    Spacer()
                    BottomView()
                }
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 100)

                TopTrailingView()
                
    //            SwiftUIGIFPlayerView(gifName: "Voice02")
    //                .scaleEffect(0.6)
    //
                TopLeadingView()
                
                Sentences()
                
                Button(action: {self.IsEnter.toggle()}) {
                    Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.01)
                        .edgesIgnoringSafeArea(.all)
                }
                
            }
    //        .background(LinearGradient(gradient:
    //        Gradient(
    //            colors: [.purple, .white, .blue ]),
    //            startPoint: .top,
    //            endPoint: .bottom))
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            if IsEnter{
                IntroView()
                    .transition(.scale)
                    .animation(.easeInOut.delay(0.3))
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

struct BottomView: View {
    @State var show  = false
    
    var body: some View {
        ZStack (alignment:.bottom){
            Image("Ellipse 37")
                .blur(radius: 50)
                .rotationEffect(Angle(degrees: show ? 180 : 0))
                .animation(Animation.linear(duration: 10).repeatForever(autoreverses: true))
                .onAppear{self.show = true}
            Image("Ellipse 38")
                .blur(radius: 20)
                .scaleEffect(2)
                .rotationEffect(Angle(degrees: show ? 240 : 0))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: true))
                .onAppear{self.show = true}
        }
        .scaleEffect(1.5)
    }
}

struct TopTrailingView: View {
    
    @State var show  = false
    
    var body: some View {
        ZStack {
            ZStack {
                VStack {
                    ZStack (alignment:.topTrailing){
                        Image("Ellipse 14")
                            .blur(radius: 20)
                            .rotationEffect(Angle(degrees: show ? 360 : 0))
                            .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false))
                            .onAppear{self.show = true}
                        Image("Ellipse 15")
                            .blur(radius: 30)
                            .rotationEffect(Angle(degrees: show ? 300 : 0))
                            .animation(Animation.linear(duration: 18).repeatForever(autoreverses: true))
                            .onAppear{self.show = true}
                        Image("Ellipse 25")
                            .blur(radius: 10)
                            .rotationEffect(Angle(degrees: show ? 300 : 0))
                            .animation(Animation.linear(duration: 10).repeatForever(autoreverses: true))
                            .onAppear{self.show = true}
                    }
                    Spacer()
                }
                .scaleEffect(1.5)
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height + 200)
            }
        }
    }
}

struct TopLeadingView: View {
    @State var show  = false
    
    var body: some View {
        VStack {
            ZStack (alignment:.topLeading){
                Image("Ellipse 33")
                    .blur(radius: 40)
                    .scaleEffect(2)
                    .rotationEffect(Angle(degrees: show ? 360 : 0))
                    .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false))
                    .onAppear{self.show = true}
                Image("Ellipse 35")
                    .blur(radius:20)
                    .scaleEffect(2)
                    .rotationEffect(Angle(degrees: show ? 180 : 0))
                    .animation(Animation.linear(duration: 10).repeatForever(autoreverses: true))
                    .onAppear{self.show = true}
                Image("Ellipse 36-1")
                    .blur(radius: 20)
                    .rotationEffect(Angle(degrees: show ? 360 : 0))
                    .animation(Animation.linear(duration: 12).repeatForever(autoreverses: false))
                    .onAppear{self.show = true}
                Image("Ellipse 36")
                    .blur(radius:30)
                    .rotationEffect(Angle(degrees: show ? 360 : 0))
                    .animation(Animation.linear(duration: 15).repeatForever(autoreverses: true))
                    .onAppear{self.show = true}
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height + 200)
    }
}

struct Sentences: View {
    var body: some View {
        VStack {
            VStack(alignment: .center) {
               Spacer()
                
                //SwiftUIGIFPlayerView(gifName: "28730-voice-bar")
                VStack(spacing: 20.0) {
                    Image("Logo")
                        .scaleEffect(0.2)
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    Text("成长相伴，沟通无碍")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.white)
                        .shadow(color: Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)).opacity(0.4), radius: 3, x: 1, y: 1)
                    Spacer()
                }
                .frame(height:UIScreen.main.bounds.height / 1.5)
                
                
               
                VStack(spacing: 10.0) {
                    Text("Morning Glory")
                    Text("一款专为听障青少年服务的软件")
                }
                .font(.system(size: 12,weight: .medium))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .shadow(color: Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)).opacity(0.4), radius: 3, x: 1, y: 1)
            }
            .frame(width: UIScreen.main.bounds.width - 100,height: UIScreen.main.bounds.height - 100)
            
            //Spacer()
        }
        .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 1.5)
    }
}
