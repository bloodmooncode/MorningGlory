//
//  IntroView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct IntroView: View {
    
    @State private var selectedPage = 0
    @State var Next = false
    @State var Enter = false
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            TabView(selection: $selectedPage){
                Intro01().tag(0)
                    .offset(y: -70)
                Intro02().tag(1)
                    .offset(y: -70)
                Intro01().tag(2)
                    .offset(y: -70)
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .offset(y: -20)

            if(selectedPage >= 0 && selectedPage < 2){
                Button(action: {self.Next.toggle()
                    withAnimation{
                        selectedPage += 1
                    }
                }, label: {
                    Image("下一步按钮")
                })
                .offset(y:UIScreen.main.bounds.height / 3)
            }
            if(selectedPage == 2){
                Button(action: {self.Enter.toggle()}){
                    Image("确认进入")
                }
                .offset(y:UIScreen.main.bounds.height / 2.33)
            }
            
            if Enter{
                LoginView()
                    .transition(.scale)
                    .animation(.easeInOut)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

