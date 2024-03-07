//
//  CommuityMenuView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/21.
//

import SwiftUI

struct CommuityMenuView: View {
    @State private var leftPercent: CGFloat = 0 // 0 for left, 1 for right
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.all)
            NavigationView {
                    GeometryReader { geometry in
                        HScrollViewController(pageWidth: geometry.size.width,
                                              contentSize: CGSize(width: UIScreen.main.bounds.width * 2, height: UIScreen.main.bounds.height),
                                              leftPercent: self.$leftPercent)
                        {
                            HStack(spacing: 0) {
                                PostListView(category: .recommend)
                                    .frame(width: UIScreen.main.bounds.width)
                                
                                VStack {
                                    HStack(alignment: .center, spacing: 10.0) {
                                        VStack {
                                            Image("关注01")
                                            Text("huahua")
                                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        }
                                        VStack {
                                            Image("关注02")
                                            Text("auiu")
                                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        }
                                        VStack {
                                            Image("关注03")
                                            Text("kyouo")
                                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        }
                                        VStack {
                                            Image("关注04")
                                            Text("e耳蜗")
                                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        }
                                        VStack {
                                            Image("关注05")
                                            Text("Apple")
                                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                        }
                                        ZStack {
                                            Image("关注更多")
                                            Image("More")
                                                .offset(y: -8)
                                        }
                                        .offset(y: 6)
                                            
                                    }
                                    PostListView(category: .hot)
                                        .frame(width: UIScreen.main.bounds.width)
                                }
                            }
                        }
                    }
                    .edgesIgnoringSafeArea(.bottom)
                    .navigationBarItems(leading: CommunityNavigationBar(leftPercent: $leftPercent).offset(y:0))
                    
                    .navigationBarTitle("首页", displayMode: .inline)
                    .offset(y:30)
                }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        //.background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct CommuityMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CommuityMenuView().environmentObject(UserData())
    }
}

