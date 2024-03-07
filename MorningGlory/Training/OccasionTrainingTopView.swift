//
//  OccasionTrainingTopView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct OccasionTrainingTopView: View {
    @Binding var return03 : Int
    
    var body: some View {
        ZStack {
            Image("Union-1")
                .scaleEffect(1.2)
                .offset(y:-100)
            
            VStack {
                HStack{
                    Button(action:{return03 = 1}){
                        Image(systemName: "arrow.left")
                            .scaleEffect(1.2)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4688017368, blue: 0.8587283492, alpha: 1)))
                    }
                    Spacer()
                    Text("场景化训练")
                        .font(.system(size: 20,weight:.bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4688017368, blue: 0.8587283492, alpha: 1)))
                    Spacer()
                    Image("hua")
                }
                .frame(width: UIScreen.main.bounds.width - 50, height:40)
//                .offset(y: 300)
                
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("开始今天的练习吧")
                                .font(.system(size: 24,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                .frame(width: UIScreen.main.bounds.width / 2, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Image("Fill 1-1")
                        }
                        Text("亲爱的鹿小葵，美好的一天从花花的练习开始吧")
                            .font(.system(size: 12,weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5529411765, green: 0.5529411765, blue: 0.5529411765, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width - 100, height: 30, alignment: .leading)
                    }
                    Image(systemName: "magnifyingglass.circle")
                        .font(.system(size: 40, weight: .light))
                    
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
                HStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
        
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1)).opacity(0.01))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
            
                        VStack {
                            Image("Bell-1")
                            Spacer()
                            Text("购物")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                        }
                        .frame(width: UIScreen.main.bounds.width / 5, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
        
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
            
                        VStack {
                            Image("Bell-1")
                            Spacer()
                            Text("出行")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                        .frame(width: UIScreen.main.bounds.width / 5, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
        
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1)).opacity(0.01))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
            
                        VStack {
                            Image("Bell-1")
                            Spacer()
                            Text("学校")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                        }
                        .frame(width: UIScreen.main.bounds.width / 5, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.9680091739, green: 0.9929439425, blue: 1, alpha: 1)))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
        
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1)).opacity(0.01))
                            .frame(width: UIScreen.main.bounds.width / 5, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(60)
                            .shadow(radius: 2,y: 2)
            
                        VStack {
                            Image("Bell-1")
                            Spacer()
                            Text("常用")
                                .font(.system(size: 12,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                        }
                        .frame(width: UIScreen.main.bounds.width / 5, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }

                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3)
        .edgesIgnoringSafeArea(.top)
    }
}

struct OccasionTrainingTopView_Previews: PreviewProvider {
    static var previews: some View {
        OccasionTrainingTopView(return03: .constant(0))
    }
}
