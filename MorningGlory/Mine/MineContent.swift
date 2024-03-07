//
//  MineContent.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/26.
//

import SwiftUI

struct MineContent: View {
    @State var return08 = false
    
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators:false) {
                VStack{
                    
                    
                    HStack {
                        Button(action:{self.return08.toggle()}) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(Color(#colorLiteral(red: 0.9968129992, green: 0.99995929, blue: 1, alpha: 1)))
                        }
                        Spacer()
                        VStack(alignment: .center, spacing: 10.0) {
                            ZStack {
                                Image("头像框")
                                Image("Group 104")
                                    .scaleEffect(0.7)
                            }
                            Text("鹿小葵")
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            Text("高二的小耳蜗一枚，乐天派")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            HStack(spacing: 10.0) {
                                Text("学生党")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(height: 24, alignment: .center)
                                    .padding(.horizontal , 10)
                                    .overlay(
                                         RoundedRectangle(cornerRadius: 15, style: .continuous)
                                             .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                    )
                                Text("绘画")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(height: 24, alignment: .center)
                                    .padding(.horizontal , 10)
                                    .overlay(
                                         RoundedRectangle(cornerRadius: 15, style: .continuous)
                                             .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                    )
                                Text("旅游")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(height: 24, alignment: .center)
                                    .padding(.horizontal , 10)
                                    .overlay(
                                         RoundedRectangle(cornerRadius: 15, style: .continuous)
                                             .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                    )
                
                            }
                        }
                        Spacer()
                        VStack {
                            Spacer()
    //                            Image("plus-1")
    //                                .frame(width: 50, height: 50, alignment: .center)
                            Image("Message")
                                .frame(width: 50, height: 50, alignment: .center)
                        }
                        .frame(width: 50, height:120, alignment: .center)
                        .offset(x: -50 , y: 80)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50 , height: 200, alignment: .center)
                    .padding(.horizontal,50)
                    .padding(.top,20)
                    .background(Image("Group 6856").scaleEffect(1.1))
                    
                    
                    
                    DynamicUploadView()
                        .cornerRadius(30)
                }
            }
            
            if return08{
                MineView()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height, alignment: .center)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MineContent_Previews: PreviewProvider {
    static var previews: some View {
        MineContent()
    }
}
