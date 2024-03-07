//
//  MineContactSuccess.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/26.
//

import SwiftUI
import SSSwiftUIGIFView

struct MineContactSuccess: View {
    
    @State var EnsureStart = false
    @State var return25 = false
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
        
            SoundClassifyView()
            
            SwiftUIGIFPlayerView(gifName: "voice-line-wave-animation")
            VStack{
                HStack{

                    Button(action:{self.return25.toggle()}) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 16,weight:.medium))
                            .foregroundColor(.black)
                            .padding(5)
                    }
                    Spacer()
                    Text("场景音识别")
                        .font(.system(size: 20,weight:.bold))
                        .foregroundColor(.blue)
                    Spacer()
                }
                .padding()
                //.padding(.top)
                //.background(Color.blue)
                Spacer()
                Image("Frame 1539")
                    .padding(.bottom)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.2, alignment: .center)
            
            if return25{
                MineOccasionView()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

    }
}

struct MineContactSuccess_Previews: PreviewProvider {
    static var previews: some View {
        MineContactSuccess()
    }
}
