//
//  TranslationHistory.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/26.
//

import SwiftUI

struct TranslationHistory: View {
    @State var return11 = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:15) {
                //Spacer()
                HStack {
                    Button(action:{self.return11.toggle()}) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 15, weight:.medium, design: .default))
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.478081584, blue: 0.9984925389, alpha: 1)))
                    }
                    Spacer()
                    Text("转译记录")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color.blue)
                    Spacer()
                   
                    Button(action: {}) {
                        Image("Library")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .frame(width: 300, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                Spacer()
                
                CalendarCard()
                
                MiddleCard()
                
                BottomCard()
                
                Spacer()

            }
            .scaleEffect(1.2)
            .padding()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 200)
            .edgesIgnoringSafeArea(.bottom)
            
            if return11{
                MineView()
                    .transition(.move(edge: .top))
                    .animation(.easeInOut)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct TranslationHistory_Previews: PreviewProvider {
    static var previews: some View {
        TranslationHistory()
    }
}

struct TopCard: View {
    var body: some View {
            VStack {
                HStack {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 15, weight:.medium, design: .default))
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.478081584, blue: 0.9984925389, alpha: 1)))
                    Spacer()
                    Text("转译记录")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color.blue)
                    Spacer()
                   
                    Button(action: {}) {
                        Image("Library")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .frame(width: 300, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                //Spacer()
        }
    }
}

struct CalendarCard: View {
    var body: some View {
        HStack {
            Image("Frame-2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: {})
                .scaleEffect(0.8)
                .frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
        }
        .frame(width: 300, height: 30, alignment: .leading)
        .padding(.horizontal)
    }
}

struct CourseCard: View {
    var detail : String
    var course : String
    var time : String
    //var color : Int64
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 3, height: 50, alignment: .bottom)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1725490196, blue: 1, alpha: 1)))
            
            VStack(alignment: .leading) {
                Text(detail)
                    .font(.system(size: 14, weight: .bold))
                
                
                Text(course)
                    .font(.system(size: 10, weight: .bold))
                
                
                Text(time)
                    .font(.system(size: 10, weight: .bold))
                    .foregroundColor(.gray)
            }
        }
        .frame(width: 130, height: 70, alignment: .leading)
    }
}

struct MiddleCard: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack {
                    VStack(alignment: .leading) {
                        Text("Monday")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.blue)
                        
                        Text("22")
                            .font(.system(size: 32, weight: .medium))
                    }
                    Spacer()
                }
                Spacer()
                VStack {
                    VStack(alignment: .leading) {
                        
                        Image("Mini Calendar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 130, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                }
                
                
            }
            
            
            HStack {
                Image("Library")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("最新标记的翻译记录")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.blue)
            }
            .frame(width: 260, height: 20, alignment: .leading)
            VStack {
                HStack {
                    CourseCard(detail: "第三章节讲课内容", course: "语文课", time: "10:00-11:30")
                    
                    CourseCard(detail: "沟通联欢会内容", course: "聊天", time: "12:30-13:00")
                }
                HStack {
                    CourseCard(detail: "老师讲错题", course: "英语", time: "15:30-16:00")
                    
                    CourseCard(detail: "老师讲考试范围", course: "数学", time: "14:30-15:00")
                }
            }
            .frame(width: 260, height: 110, alignment: .center)
            .padding()
        }
        .frame(width: 260, height: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 20, x: 0, y: 10)
    }
}

struct BottomCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("TODAY")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.blue)
                
                Text("22")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
                Image("List icon")
            }
            .frame(width: 50, height: 110, alignment: .center)
            .padding()
            
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("数学考试")
                            .font(.system(size: 14, weight: .bold))
                        
                        Text("明天")
                            .font(.system(size: 10, weight: .bold))
                    }
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.7)
                    }
                }
                .frame(width: 180, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Color.black.opacity(0.1)
                    .frame(width: 180, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                HStack{
                    VStack(alignment: .leading) {
                        Text("购买设备")
                            .font(.system(size: 14, weight: .bold))
                        
                        Text("23号")
                            .font(.system(size: 10, weight: .bold))
                    }
                    Spacer()
                }
                .frame(width: 180, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Color.black.opacity(0.1)
                    .frame(width: 180, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                HStack {
                    Text("更多转译笔记")
                        .font(.system(size: 14, weight: .bold))
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "arrow.right")
                    }
                    
                }
                .frame(width: 180, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
            }
        }
        .frame(width: 260, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding(.horizontal)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 20, x: 0, y: 10)
    }
}
