//
//  CommunityParticipateScrollView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/24.
//

import SwiftUI

struct CommunityParticipateScrollView: View {
    @Binding var Choose: Int
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                HStack {
                    Spacer()
                    Text("活动")
                        .font(.system(size: 20,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 30, alignment: .center)
                
                CommunitySearchBar(text: .constant(""))
                
                ZStack {
                    VStack {
                        ActivityNavigationBar(Choose: $Choose)
                        CommunityParticipateView()
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .center)
                }
                .cornerRadius(40)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct CommunityParticipateScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityParticipateScrollView(Choose: .constant(0))
    }
}

