//
//  ActivityNavigationBar.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/24.
//

import SwiftUI

private let kLabelWidth: CGFloat = 60
private let kButtonHeight: CGFloat = 24

struct ActivityNavigationBar: View {
    
//    @Binding var RightPercent: CGFloat // 0 for left, 1 for right
    @Binding var Choose :Int
    @State private var recommend = false
    @State private var follow = false
    
    var body: some View {
        ZStack {
            Color("bgColor02").opacity(0.01)
            HStack(alignment: .top, spacing: 0) {
                
                Spacer()
        
                ZStack {
                    HStack(spacing: 0) {
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 150, height: 38)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .cornerRadius(20)
                                .shadow(radius: 3, x:2, y:2)
                                .opacity(1)
                                .offset(x: Choose == 0 ? -5.5 : 130)
//                                .animation(.linear)
                                .animation(.easeInOut)
                            
                        Button (action:{self.recommend.toggle();Choose = 0}){
                            Text("推荐")
                                .font(.system(size: 16,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                .frame(width: kLabelWidth, height: kButtonHeight)
                                .padding(.top, 5)

                            }
                        }
                        
                        Spacer()
                        
                        Button (action:{self.follow.toggle();Choose = 1}) {
                            Text("关注")
                                .font(.system(size: 16,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                .frame(width: kLabelWidth)
                                .padding(.trailing,40)
                                }
                            }
                        }
            }
            .frame(width: UIScreen.main.bounds.width / 1.35, height: 40,alignment: .center)
            .background(Color("bgColor02"))
            .cornerRadius(20)
            .scaleEffect(0.9)
        }
        .frame(width: UIScreen.main.bounds.width , height: 60)
    }
}

struct ActivityNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        ActivityNavigationBar(Choose:.constant(0))
    }
}

