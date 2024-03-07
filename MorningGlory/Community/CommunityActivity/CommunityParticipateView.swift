//
//  CommunityParticipateView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/24.
//

import SwiftUI

struct CommunityParticipateView: View {
    
    @State var tap1 = false
    @State var tap2 = false
    @State var tap3 = false
    @State var tap4 = false
    @State var tap5 = false
    @State var tap6 = false
    @State var tap7 = false
    @State var tap8 = false
    @State private var DownScroll = false
    
    var body: some View {
        
        ZStack {
            Color.white
                //.edgesIgnoringSafeArea(.all)
                .cornerRadius(40)
            VStack(alignment: .leading, spacing: 15.0) {
                HStack(alignment: .bottom) {
                    Text("我的关注")
                        .font(.system(size: 20,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    HStack(spacing: 5.0) {
                        Button(action: {
                            self.DownScroll.toggle()
                        }){
                            Text("下拉看更多")
                        }
                        
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 12,weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)))
                }
                
                HStack(alignment: .top, spacing: 15.0) {
                    ScrollView(showsIndicators:false) {
                        ZStack {
                            Image("阅读大赛")
                            VStack {
                                HStack {
                                    Spacer()
                                    
                                    Button(action:{self.tap1.toggle()}){
                                        Image(systemName:tap1 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap1 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 60)
                        
                        ZStack {
                            Image("剧目排演")
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action:{self.tap2.toggle()}){
                                        Image(systemName:tap2 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap2 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 60)
                        
                        ZStack {
                            Image("登山活动")
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action:{self.tap3.toggle()}){
                                        Image(systemName:tap3 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap3 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 60)
                        
                        ZStack {
                            Image("剧目排演-1")
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action:{self.tap4.toggle()}){
                                        Image(systemName:tap4 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap4 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 30)
                    }
                    
                    ScrollView(showsIndicators:false) {
                        
                        ZStack {
                            Image("社区服务")
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action:{self.tap5.toggle()}){
                                        Image(systemName:tap5 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap5 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 30)
                        
                        ZStack {
                            Image("心理咨询室")
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action:{self.tap6.toggle()}){
                                        Image(systemName:tap6 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap6 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 30)
                        
                        ZStack {
                            Image("睡前阅读")
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action:{self.tap7.toggle()}){
                                        Image(systemName:tap7 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap7 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 30)
                        
                        ZStack {
                            Image("城市地标")
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action:{self.tap8.toggle()}){
                                        Image(systemName:tap8 ? "heart.fill" :  "heart")
                                            .foregroundColor(tap8 ? Color(#colorLiteral(red: 0.2205541432, green: 0.363180548, blue: 1, alpha: 1)) :  Color(#colorLiteral(red: 0.6288029552, green: 0.6431420445, blue: 0.6990275979, alpha: 1)))
                                    }
                                }
                                .padding(.horizontal, 16)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 30)
                        
                    }
                }
            }
            .padding(.top, 10)
            
        }
        .offset(y: DownScroll ? -UIScreen.main.bounds.height / 4 : 0)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CommunityParticipateView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityParticipateView()
    }
}
