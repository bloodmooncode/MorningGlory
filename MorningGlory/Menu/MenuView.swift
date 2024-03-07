//
//  MenuView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/19.
//

import SwiftUI
import UIKit

struct MenuView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .white
    }
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
                .transition(/*@START_MENU_TOKEN@*/.identity/*@END_MENU_TOKEN@*/)
            VStack {
                TabView {
                    HomePage()
                        .tabItem {
                            Image(systemName: "mic.fill")
                            Text("首页")
                        }
                    CommunityView().environmentObject(UserData())
                        .tabItem {
                            Image(systemName: "chart.bar.xaxis")
                            Text("社群")
                        }
                    TrainingMenuView()
                        .tabItem {
                            Image(systemName: "headphones")
                            Text("语训")
                        }
                    MineView()
                        .tabItem {
                            Image(systemName:"person.fill")
                            Text("我的")
                        }
                    
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
