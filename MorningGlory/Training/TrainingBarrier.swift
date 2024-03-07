//
//  TrainingBarrier.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct TrainingBarrier: View {
    
    @State var first = false
    @State var return05 = false
    
    var body: some View {

        ZStack {
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("student-team-meeting-at-table 1")
                    .scaleEffect(1.3)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).opacity(0.4)
                    .frame(width: UIScreen.main.bounds.width, height:300)
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
                
            VStack(alignment: .leading, spacing: 80.0) {
                VStack(alignment: .leading, spacing: 10.0) {
                    Spacer()
                    HStack {
                        Text("站点场景练习")
                            .font(.system(size: 24,weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        Image("Fill 1-1")
                    }
                    Text("模拟公交车出行需要的语言场景")
                        .font(.system(size: 12,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    Button(action:{self.return05.toggle()}) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .scaleEffect(1.2)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 150)
                
                    
                ScrollView (showsIndicators: false){
                    Button(action:{self.first.toggle()}) {
                        HStack {
                            VStack(alignment: .center, spacing: 0.0) {
                                Image("Group 207")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.2507374585, green: 0.3370757103, blue: 1, alpha: 1)))
                                Rectangle()
                                    .frame(width: 1, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            }
                            
                            VStack(alignment: .leading, spacing: 40.0) {
                                Text("第一关")
                                    .font(.system(size: 12,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                                Divider()
                                    .frame(width: UIScreen.main.bounds.width - 100)
                            }
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-1")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.9724346995, green: 0.9726474881, blue: 0.9681126475, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack(alignment: .leading, spacing: 40.0) {
                            Text("第二关")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-2")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.9724346995, green: 0.9726474881, blue: 0.9681126475, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack(alignment: .leading, spacing: 40.0) {
                            Text("第三关")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-3")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.9724346995, green: 0.9726474881, blue: 0.9681126475, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack(alignment: .leading, spacing: 40.0) {
                            Text("第四关")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-4")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.9724346995, green: 0.9726474881, blue: 0.9681126475, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack(alignment: .leading, spacing: 40.0) {
                            Text("第五关")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-5")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.9724346995, green: 0.9726474881, blue: 0.9681126475, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack(alignment: .leading, spacing: 40.0) {
                            Text("第六关")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        Text("敬请期待")
                            .font(.system(size: 12,weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                        Spacer()
                    }
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .padding()
                    
                }
                .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height / 1.6)
                .padding(.vertical, 40)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(40)
                .edgesIgnoringSafeArea(.bottom)
                
            }
            .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
            
            if first{
                FirstBarrier()
                    .transition(.move(edge: .top))
                    .animation(.easeInOut)
            }
            
            if return05{
                OccasionTraining()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
            
        }
        //.edgesIgnoringSafeArea(.bottom)
    }
}

struct TrainingBarrier_Previews: PreviewProvider {
    static var previews: some View {
        TrainingBarrier()
    }
}

