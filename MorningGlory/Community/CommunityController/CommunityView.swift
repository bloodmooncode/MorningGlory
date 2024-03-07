//
//  CommunityView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI

struct CommunityView: View {
    @State private var num = 1
    
    var body: some View {
        ScrollView( showsIndicators: false){
            Spacer()
            CommunityMenuTopView(num: $num)
            //Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(40)
                if(num == 1){
                    CommuityMenuView()
                        .offset(y:40)
                        .transition(.move(edge: .leading))
                        .animation(.easeInOut)
                }
                if(num == 2){
                    CommunityScrollView()
                        .transition(.move(edge: .trailing))
                        .animation(.easeInOut)
                }
                if(num == 3){
                    CommunityHotView()
                        .transition(.move(edge: .trailing))
                        .animation(.easeInOut)
                }
                if(num == 4){
                    CommunityCityView()
                        .transition(.move(edge: .trailing))
                        .animation(.easeInOut)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView().environmentObject(UserData())
    }
}
