//
//  PracticeNavigationBar.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/25.
//

import SwiftUI

private let kLabelWidth: CGFloat = 60
private let kButtonHeight: CGFloat = 24

struct PracticeNavigationBar: View {
    
    @Binding var Choice :Int
    @State private var collect = false
    @State private var history = false
        
        var body: some View {
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
                                    .offset(x: Choice == 0 ? -5 : 130)
                                    .animation(.linear)
                                    //.animation(.easeInOut)
                                
                                Button (action:{self.collect.toggle();Choice = 0}) {
                                    Text("收藏")
                                        .font(.system(size: 16,weight:.semibold))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        .frame(width: kLabelWidth, height: kButtonHeight)
                                        .padding(.top, 5)

                                }
                            }
                            
                            Spacer()
                            
                            Button (action:{self.history.toggle();Choice = 1}) {
                                Text("记录")
                                    .font(.system(size: 16,weight:.semibold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                    .frame(width: kLabelWidth)
                                    .padding(.trailing,40)
                                    }
                                }
                            }
                }
                .frame(width: UIScreen.main.bounds.width / 1.35, height: 40,alignment: .center)
                .background(Color(#colorLiteral(red: 0.9212843776, green: 0.9360860586, blue: 0.9457122684, alpha: 1)))
                .cornerRadius(20)
                .scaleEffect(0.9)
                //.offset(y: 100)
                
        }
    }


struct PracticeNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        PracticeNavigationBar(Choice:.constant(0))
    }
}
