//
//  TrainingTopView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct TrainingTopView: View {
    
    @State private var return01 = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            ZStack {
                VStack {
                    Image("发音专题")
                        .scaleEffect(1.2)
                    Spacer()
                }
                .edgesIgnoringSafeArea(.all)
                Color(#colorLiteral(red: 0.8156862745, green: 0.9568627451, blue: 0.9843137255, alpha: 1))

                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
            }

            VStack(alignment: .center, spacing: 30.0) {
                HStack{
                    Button(action:{self.return01.toggle()}) {
                        Image(systemName: "arrow.left")
                            .scaleEffect(1.2)
                            .foregroundColor( Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    }
                    Spacer()
                    Text("我的练习")
                        .font(.system(size: 20,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    Spacer()
                    Image(systemName: "calendar")
                        .scaleEffect(1.5)
                }
                .frame(width: UIScreen.main.bounds.width - 50, height:40)
                .offset(y: 50)
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            if return01{
                TrainingMenuView()
                    .transition(.move(edge: .top))
                    .animation(.easeInOut)
                    .edgesIgnoringSafeArea(.all)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct TrainingTopView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingTopView()
    }
}
