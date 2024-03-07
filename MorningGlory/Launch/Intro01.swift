//
//  Intro01.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct Intro01: View {
    @State private var selectedPage = 0
    @State var Next = false
    
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Text("跳过")
                        .font(.system(size: 12,weight: .regular, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.4705882353, green: 0.4549019608, blue: 0.4274509804, alpha: 1)))
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: 600)
            VStack(alignment: .center, spacing: 20.0) {
                Image("illustration")
                Text("Find a course\nfor you")
                    .font(.system(size: 32,weight: .bold, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2352941176, blue: 0.2117647059, alpha: 1)))
                    .multilineTextAlignment(.center)
                Text("Quarantine is the perfect time to spend your\nday learning something new, from anywhere!")
                    .font(.system(size: 14,weight: .regular, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.4705882353, green: 0.4549019608, blue: 0.4274509804, alpha: 1)))
                //Image("下一步按钮")
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 1.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct Intro01_Previews: PreviewProvider {
    static var previews: some View {
        Intro01()
    }
}
