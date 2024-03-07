//
//  PartViewController.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct ExtraButton: View {
    @State var Ensure = false
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {self.Ensure.toggle()}){
                    Image("确认按钮")
                }
                .offset(y:33)
                .frame(width: UIScreen.main.bounds.width - 50 , height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("重新选择")
                    .font(.system(size: 12,weight: .bold, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                    .frame(width:UIScreen.main.bounds.width - 50, height:30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            if Ensure{
                HearLevel()
                    .offset(y:-300)
                    .transition(.move(edge: .top))
                    .animation(.spring().delay(0.3))
            }
        }
    }
}

struct PartViewController_Previews: PreviewProvider {
    static var previews: some View {
        ExtraButton()
    }
}
