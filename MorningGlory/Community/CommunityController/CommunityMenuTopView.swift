//
//  CommunityMenuTopView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI

struct CommunityMenuTopView: View {
    
    @State var move = false
    @State var hotMessage = false
    @State var activity = false
    @State var city = false
    @Binding var num :Int
    
    var body: some View {
        ZStack {
            Image("friends-high-five-on-semi-frozen-lake 1")
                .scaleEffect(1.1)
                //.offset()
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.6)
                .scaleEffect(1.1)
            VStack {
                Spacer()
                
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("花花社区")
                                .font(.system(size: 24,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width / 4, height: 30, alignment: .leading)
                            Image("Fill 1-1")
                        }
                        Text("亲爱的鹿小葵，花花社群欢迎你的加入")
                            .font(.system(size: 12,weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width - 100, height: 30, alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 150, height: 60, alignment: .leading)
                    
                    Image("Frame 240-1")
                        .frame(width: 40, height: 40)
                        .offset(x: -20, y:80)
                    
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
                
                Spacer()
                
                HStack(spacing: 15.0) {
                    Button (action: {self.move.toggle();num = 1}) {
                      
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
            
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1))
                                    .opacity((num != 1) ? 0.01: 1)
                                )
                                
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
                                .animation(.linear)
                
                            VStack(spacing: 20) {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Image("动态")
                                        .foregroundColor(.gray)
                                        .scaleEffect(0.9)
                                    
                                }
                                Text("动态")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor((num != 1) ? Color(#colorLiteral(red: 0.5528807044, green: 0.5529770851, blue: 0.5528671145, alpha: 1)): Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)) )
                            }
                            .frame(width: UIScreen.main.bounds.width / 5, height: 110, alignment: .top)
                        }
                    }
                    
                    Button (action: {self.hotMessage.toggle();num = 2}) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
            
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1))
                                                    .opacity((num == 2) ? 1: 0.01)
                                )
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
                                .animation(.linear)
                
                            VStack(spacing: 20.0) {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Image("热门")
                                }
                                //Spacer()
                                Text("热门")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor((num == 2) ? Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)):Color(#colorLiteral(red: 0.5528807044, green: 0.5529770851, blue: 0.5528671145, alpha: 1)) )
                            }
                            .frame(width: UIScreen.main.bounds.width / 5, height: 110, alignment: .top)
                        }
                    }
                    
                    Button (action: {self.activity.toggle();num = 3}) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
            
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1)).opacity((num == 3) ? 1: 0.01))
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
                                .animation(.linear)
                
                            VStack(spacing: 20.0) {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Image("活动")
                                    
                                }

                                Text("活动")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor((num == 3) ? Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)):Color(#colorLiteral(red: 0.5528807044, green: 0.5529770851, blue: 0.5528671145, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 5, height: 110, alignment: .top)
                        }
                    }
                    
                    Button (action: {self.city.toggle();num = 4}) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
            
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1)).opacity((num == 4) ? 1: 0.01))
                                .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(60)
                                .shadow(radius: 2,y: 2)
                                .animation(.linear)
                
                            VStack(spacing: 20.0) {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Image("同城")
                                }
                                //Spacer()
                                Text("同城")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor((num == 4) ? Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)):Color(#colorLiteral(red: 0.5528807044, green: 0.5529770851, blue: 0.5528671145, alpha: 1)))
                            }
                            .frame(width: UIScreen.main.bounds.width / 5, height: 110, alignment: .top)
                        }
                    }

                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

    }
}

struct CommunityMenuTopView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityMenuTopView(num:.constant(1))
    }
}
