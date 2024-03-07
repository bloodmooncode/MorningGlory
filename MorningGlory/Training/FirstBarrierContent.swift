//
//  FirstBarrierContent.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct FirstBarrierContent: View {
    
    @State var ButtonPlayer02 = false
    @State var return07 = false
    @State var barrierNum = 1
    
    var body: some View {
        ZStack {
            Image("a-red-bus-drives-under-glassy-skyscrapers 1")
                .scaleEffect(1.1)
                .edgesIgnoringSafeArea(.all)
            
            Color.black
                .opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 50.0) {
                HStack {
                    Button(action:{self.return07.toggle()}) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 20, alignment: .center)
                
                if barrierNum == 1{
                    VStack {
                        Text("nínhǎo ， wǒxiǎngxúnwènchēcì")
                            .font(.system(size: 20,weight: .medium))
                        .foregroundColor(Color.white)
                        
                        Text("您好，我想询问车次")
                            .font(.system(size: 32,weight: .bold))
                            .foregroundColor(Color.white)
                    }
                }
                
                if barrierNum == 2{
                    VStack {
                        Text("búhǎoyìsī，")
                            .font(.system(size: 20,weight: .medium))
                            .foregroundColor(Color.white)
                        
                        Text("不好意思，")
                            .font(.system(size: 32,weight: .bold))
                            .foregroundColor(Color.white)
                        
                        Text("qǐngwènxiàyītàngbānchēháiyǒuduōjiǔdào")
                            .font(.system(size: 17,weight: .medium))
                            .foregroundColor(Color.white)
                        
                        Text("请问下一趟班车还有多久到")
                            .font(.system(size: 26,weight: .bold))
                            .foregroundColor(Color.white)
                    }
                }
                
                Image("Frame 270-2")
                    .frame( height: 200, alignment: .center)
                    //.offset(y: 50)

                MusicPlayer(barrierNum: $barrierNum)
                    
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 100, alignment: .center)
            
            if ButtonPlayer02{
                FirstScore()
                    .transition(.scale)
                    .animation(.easeInOut)
            }
            
            if return07{
                FirstScore()
                    FirstBarrier()
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut)
            }
        }
    }
}

struct FirstBarrierContent_Previews: PreviewProvider {
    static var previews: some View {
        FirstBarrierContent()
    }
}
