//
//  FirstScore.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct FirstScore: View {
    
    @State var Next02 = false
    @State var Again = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("student-team-meeting-at-table 1")
                    .scaleEffect(1.1)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)

            VStack {
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).opacity(0.4)
                    .frame(width: UIScreen.main.bounds.width, height: 260, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
                
            VStack(alignment: .center) {
                Spacer()
                ScrollView {
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.2507374585, green: 0.3370757103, blue: 1, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack {
                            
                            HStack(alignment: .center) {
                                
                                Image("Frame 1419")
                                    .offset(y: 10)
                                
                                VStack(alignment: .leading, spacing: 40.0) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                        Text("美年达")
                                            .font(.system(size: 16,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                        Text("2019年10月1日")
                                            .font(.system(size: 12,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.3332946301, green: 0.3333562613, blue: 0.3332860172, alpha: 1)))
                                    }
                            
                                    .frame(width: UIScreen.main.bounds.width / 3)
                                }
                                Spacer()
                                Text("100分")
                                    .font(.system(size: 16,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .frame(width: 100)
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                            
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-6")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.2507374585, green: 0.3370757103, blue: 1, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack {
                            
                            HStack(alignment: .center) {
                                
                                Image("Frame 1419")
                                    .offset(y: 10)
                                
                                VStack(alignment: .leading, spacing: 40.0) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                        Text("黑糖啵啵")
                                            .font(.system(size: 16,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                        Text("2019年10月5日")
                                            .font(.system(size: 12,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.3332946301, green: 0.3333562613, blue: 0.3332860172, alpha: 1)))
                                    }
                            
                                    .frame(width: UIScreen.main.bounds.width / 3)
                                }
                                Spacer()
                                Text("100分")
                                    .font(.system(size: 16,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .frame(width: 100)
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                            
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-7")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.2507374585, green: 0.3370757103, blue: 1, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack {
                            
                            HStack(alignment: .center) {
                                
                                Image("Frame 1419")
                                    .offset(y: 10)
                                
                                VStack(alignment: .leading, spacing: 40.0) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                        Text("杨戈斯达")
                                            .font(.system(size: 16,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                        Text("2019年11月5日")
                                            .font(.system(size: 12,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.3332946301, green: 0.3333562613, blue: 0.3332860172, alpha: 1)))
                                    }
                            
                                    .frame(width: UIScreen.main.bounds.width / 3)
                                }
                                Spacer()
                                Text("100分")
                                    .font(.system(size: 16,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .frame(width: 100)
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                            
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-3")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.2507374585, green: 0.3370757103, blue: 1, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack {
                            
                            HStack(alignment: .center) {
                                
                                Image("Frame 1419")
                                    .offset(y: 10)
                                
                                VStack(alignment: .leading, spacing: 40.0) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                        Text("匿名")
                                            .font(.system(size: 16,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                        Text("2020年2月1日")
                                            .font(.system(size: 12,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.3332946301, green: 0.3333562613, blue: 0.3332860172, alpha: 1)))
                                    }
                            
                                    .frame(width: UIScreen.main.bounds.width / 3)
                                }
                                Spacer()
                                Text("100分")
                                    .font(.system(size: 16,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .frame(width: 100)
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                            
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .center, spacing: 0.0) {
                            Image("Group 207-4")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.2507374585, green: 0.3370757103, blue: 1, alpha: 1)))
                            Rectangle()
                                .frame(width: 1, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        }
                        
                        VStack {
                            
                            HStack(alignment: .center) {
                                
                                Image("Frame 1419")
                                    .offset(y: 10)
                                
                                VStack(alignment: .leading, spacing: 40.0) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                        Text("荒木冒险者")
                                            .font(.system(size: 16,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                        Text("2020年3月2日")
                                            .font(.system(size: 12,weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0.3332946301, green: 0.3333562613, blue: 0.3332860172, alpha: 1)))
                                    }
                            
                                    .frame(width: UIScreen.main.bounds.width / 3)
                                }
                                Spacer()
                                Text("100分")
                                    .font(.system(size: 16,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .frame(width: 100)
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                            
                            Divider()
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.7, alignment: .center)
                    .padding(.vertical,0)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .offset(y: 250)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            
            VStack {
                HStack {
                    Spacer()
                    Text("第一关训练")
                        .font(.system(size: 20,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
                
                VStack(spacing: 30.0) {
                    HStack {
                        Image("Group 6786")
                        VStack(alignment: .center, spacing: 15.0) {
                            
                            HStack {
                                Spacer()
                                Image("Ellipse 40-1")
                            }
                            .frame(height: 10)
                            
                            Text("80分")
                                .font(.system(size: 32,weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.223085463, green: 0.3559136391, blue: 1, alpha: 1)))
                            Text("本次训练击败88%的花花")
                                .font(.system(size: 12,weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                            
                            HStack(alignment: .center, spacing: 30.0) {
                                Image(systemName: "square.and.arrow.up")
                                Image(systemName: "multiply")
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.6288169622, green: 0.6431000829, blue: 0.7032963634, alpha: 1)))
                            .scaleEffect(1.3)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 60, height: 230, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(20)
                .shadow(radius:5 ,y: 5)
//                .offset(y: -UIScreen.main.bounds.height / 4)
    
                Spacer()
                
                
                VStack {
                    Image("Frame 1420")
                    HStack {
                        //Button(action: {self.MakeSure.toggle()}){
                        Button (action:{self.Next02.toggle()}){
                            Text("下一关训练")
                                    .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                                    .frame(width: 120, height: 40)
                                    //.foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                    
                                    .overlay(
                                         RoundedRectangle(cornerRadius: 8, style: .continuous)
                                             .stroke(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)), lineWidth: 1)
                                    )
                                    .padding(.leading,-10)
                                .offset(x:10)
                        }
                        //}
                        Spacer()
                        //Button(action: {self.Repeat.toggle()}){
                        Button(action:{self.Again.toggle()}) {
                            Text("再闯一次关")
                                    .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                                    .frame(width: 120, height: 40)
                                    //.foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                    
                                    .overlay(
                                         RoundedRectangle(cornerRadius: 8, style: .continuous)
                                             .stroke(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)), lineWidth: 1)
                                    )
                                .padding(.leading,-10)
                        }
                        //}
                    }
                    .frame(width: UIScreen.main.bounds.width - 130)
                    
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(.bottom)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                //.offset(y:35)
            }
            .frame(height: UIScreen.main.bounds.height / 1.1)
            //.edgesIgnoringSafeArea(.all)
            
            if Next02{
                FirstBarrier()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
            
            if Again{
                TrainingBarrier()
                    .edgesIgnoringSafeArea(.bottom)
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct FirstScore_Previews: PreviewProvider {
    static var previews: some View {
        FirstScore()
    }
}
