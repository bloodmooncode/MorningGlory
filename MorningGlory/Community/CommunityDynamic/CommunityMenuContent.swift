//
//  CommunityMenuContent.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI

struct CommunityMenuContent: View {
    var body: some View {
        VStack {
        
            VStack {
                Spacer()
                HStack{
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .scaleEffect(1.2)
                    Spacer()
                    Text("动态")
                        .font(.system(size: 20,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                .frame(width: UIScreen.main.bounds.width - 50, height:40)
            }
            .frame(width: UIScreen.main.bounds.width, height:70)
            .background(Color("MainColor"))
            
            CommuityMenuView()
        }
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct CommunityMenuContent_Previews: PreviewProvider {
    static var previews: some View {
        CommunityMenuContent().environmentObject(UserData())
    }
}
