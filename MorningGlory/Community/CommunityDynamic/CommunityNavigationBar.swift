//
//  CommunityNavigationBar.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI


private let kLabelWidth: CGFloat = 60
private let kButtonHeight: CGFloat = 24

struct CommunityNavigationBar: View {
    
    @Binding var leftPercent: CGFloat // 0 for left, 1 for right
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
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
                                    .offset(x: 70)
                                    .offset(x: UIScreen.main.bounds.width / 2 * (self.leftPercent - 0.5) + kLabelWidth * (0.5 - self.leftPercent))
                                
                                Text("主页")
                                    .font(.system(size: 16,weight:.semibold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                    .frame(width: kLabelWidth, height: kButtonHeight)
                                    .padding(.top, 5)
                                    .opacity(Double(1 - leftPercent * 0.5))
                                    .onTapGesture {
                                        withAnimation {
                                            self.leftPercent = 0
                                        }
                                }
                            }
                            
                            Spacer()
                            
                            Text("关注")
                                .font(.system(size: 16,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                .frame(width: kLabelWidth)
                                .padding(.trailing,40)
                                .opacity(Double(0.5 + leftPercent * 0.5))
                                .onTapGesture {
                                    withAnimation {
                                        self.leftPercent = 1
                                    }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width / 1.35, height: 40,alignment: .center)
                        .background(Color(#colorLiteral(red: 0.9212843776, green: 0.9360860586, blue: 0.9457122684, alpha: 1)))
                        .cornerRadius(20)
                        .scaleEffect(0.9)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.5)
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width,height:80)
    }
}

struct CommunityNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CommunityNavigationBar(leftPercent: .constant(0))
    }
}
