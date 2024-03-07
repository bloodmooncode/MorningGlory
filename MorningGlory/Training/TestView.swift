//
//  TestView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            
            FirstScore()
            HStack {
                //Button(action: {self.MakeSure.toggle()}){
                    Text("下一关训练")
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
                //}
                Spacer()
                //Button(action: {self.Repeat.toggle()}){
                    Text("再闯一次关")
                        .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                        .frame(width: 120, height: 40)
                        //.foregroundColor(.white)
                        .font(.system(size: 16, weight: .medium))
                        
                        .overlay(
                             RoundedRectangle(cornerRadius: 8, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)), lineWidth: 1)
                        )
                        .padding(.leading,-10)
                //}
            }
            .frame(width: UIScreen.main.bounds.width - 130)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
