//
//  CommunityHotView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI

struct CommunityHotView: View {
    @State private var Choose = 0
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1))
                .cornerRadius(40)
                .edgesIgnoringSafeArea(.all)
            NavigationView {
                if Choose == 1{
                    CommunityParticipateScrollView(Choose: $Choose)
                        
                        .edgesIgnoringSafeArea(.all)
                        //.offset(y: -UIScreen.main.bounds.height / 12)
                }
                
                if Choose == 0{
                    CommunityAttentionView(Choose: $Choose)
                        .edgesIgnoringSafeArea(.all)
                        //.offset(y: -UIScreen.main.bounds.height / 12)
                }
                
            }
            .offset(y: 50)
            .navigationBarTitle("活动", displayMode: .inline)
            .navigationViewStyle(StackNavigationViewStyle())
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct CommunityHotView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityHotView()
    }
}
