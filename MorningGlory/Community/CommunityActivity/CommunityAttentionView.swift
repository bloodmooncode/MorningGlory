//
//  CommunityAttentionView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/24.
//

import SwiftUI

struct CommunityAttentionView: View {
    
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
                .frame(width: UIScreen.main.bounds.width, height: 30, alignment: .center)
                
                CommunitySearchBar(text: .constant(""))
                ActivityNavigationBar(Choose: $Choose)
                
                    VStack(alignment: .leading, spacing: 15.0) {
                        
                            //.padding(.top,10)
                            
                        
                        CommunityImageSearch(HotTitle:.constant("正在进行中"), HotSubTitle:.constant("看看大家都在做什么"), Hotratio: .constant(1.2))
                        
                        CommunityImageSearch(HotTitle:.constant("精选活动"), HotSubTitle:.constant("期待您的参与"), Hotratio: .constant(1.0))
                        
                        CommunityParticipateView()
                            .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height / 2)
                        
                    }
                    .background(Color.white)
                    
                
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                .offset(x: 20,y: 80)
                .cornerRadius(40)
                
                Spacer()
                
            }
//            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct CommunityAttentionView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityAttentionView(Choose: .constant(1))
    }
}
