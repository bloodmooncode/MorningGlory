//
//  OccasionTrainingView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct OccasionTrainingView: View {
    
    @Binding var StopPractice : Bool
    
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action :{self.StopPractice.toggle()}) {
                    ZStack {
                        Image("站点场景")
                            .mask(
                                Image("BG")
                                    .scaledToFit()
                            )
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.3098039216, green: 0.6509803922, blue: 1, alpha: 1)))
                            .opacity(0.5)
                            .mask(
                                Image("BG")
                                    .scaledToFit()
                            )
                        
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.3098039216, green: 0.6509803922, blue: 1, alpha: 1)))
                            .opacity(0.5)
                            .offset(x: -110)
                            .mask(
                                Image("BG")
                                    .scaledToFit()
                            )
                        HStack {
                            VStack(alignment: .leading) {
                                Text("站点场景练习")
                                    .font(.system(size: 20,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                                    .padding(.vertical,2)
                                ZStack (alignment: .leading){
                                    
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width / 2, height: 10, alignment: .leading)
                                        .foregroundColor(Color(#colorLiteral(red: 0.9881315827, green: 0.988296926, blue: 0.9881082177, alpha: 1)))
                                        .cornerRadius(5)
                                    Rectangle()
                                        .foregroundColor(Color(#colorLiteral(red: 0.238243252, green: 0.336116612, blue: 1, alpha: 1)))
                                        .frame(width: 90, height: 10, alignment: .leading)
                                        .cornerRadius(5)
                                        .shadow(color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(0.5),radius: 3)
                                }
                                Text("35%     完成")
                                    .font(.system(size: 16,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                            }
                            .frame(width:UIScreen.main.bounds.width / 1.6, height: 100, alignment: .center)
                            .padding(.horizontal,10)
                        }
                        .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .offset(x: -50)
                        
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: 110)
                }
                
                ZStack {
                    Image("问讯场景")
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.4705882353, green: 0.4745098039, blue: 0.9450980392, alpha: 1)))
                        .opacity(0.5)
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.465290308, green: 0.4762336016, blue: 0.9433954358, alpha: 1)))
                        .opacity(0.5)
                        .offset(x: -110)
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    HStack {
                        VStack(alignment: .leading) {
                            Text("问询场景练习")
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                                .padding(.vertical,2)
                            ZStack (alignment: .leading){
                                
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width / 2, height: 10, alignment: .leading)
                                    .foregroundColor(Color(#colorLiteral(red: 0.9881315827, green: 0.988296926, blue: 0.9881082177, alpha: 1)))
                                    .cornerRadius(5)
                                Rectangle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.937254902, green: 0.3647058824, blue: 0.6588235294, alpha: 1)))
                                    .frame(width: 135, height: 10, alignment: .leading)
                                    .cornerRadius(5)
                                    .shadow(color: Color(#colorLiteral(red: 1, green: 0.3353464603, blue: 1, alpha: 1)).opacity(0.5),radius: 3)
                            }
                            Text("60%     完成")
                                .font(.system(size: 16,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                        }
                        .frame(width:UIScreen.main.bounds.width / 1.6, height: 100, alignment: .center)
                        .padding(.horizontal,10)
                    }
                    .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .offset(x: -50)
                    
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 110)
                
                ZStack {
                    Image("基础场景")
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.9058823529, green: 0.4470588235, blue: 0.9450980392, alpha: 1)))
                        .opacity(0.5)
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.9058823529, green: 0.4470588235, blue: 0.9450980392, alpha: 1)))
                        .opacity(0.5)
                        .offset(x: -110)
                        .mask(
                            Image("BG")
                                .scaledToFit()
                        )
                    HStack {
                        VStack(alignment: .leading) {
                            Text("基础场景练习")
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                                .padding(.vertical,2)
                            ZStack (alignment: .leading){
                                
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width / 2, height: 10, alignment: .leading)
                                    .foregroundColor(Color(#colorLiteral(red: 0.9881315827, green: 0.988296926, blue: 0.9881082177, alpha: 1)))
                                    .cornerRadius(5)
                                Rectangle()
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9019607843, blue: 0.01568627451, alpha: 1)))
                                    .frame(width: 200, height: 10, alignment: .leading)
                                    .cornerRadius(5)
                                    .shadow(color: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)).opacity(0.5),radius: 3)
                            }
                            Text("100%     完成")
                                .font(.system(size: 16,weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                        }
                        .frame(width:UIScreen.main.bounds.width / 1.6, height: 100, alignment: .center)
                        .padding(.horizontal,10)
                    }
                    .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .offset(x: -50)
                    
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 110)
                
                HStack(alignment: .center) {
                    Text("敬请期待")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.3)
    }
}

struct OccasionTrainingView_Previews: PreviewProvider {
    static var previews: some View {
        OccasionTrainingView(StopPractice: .constant(false))
    }
}
