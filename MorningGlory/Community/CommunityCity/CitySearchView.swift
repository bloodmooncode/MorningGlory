//
//  CitySearchView.swift
//  Test02
//
//  Created by 张原溥 on 2021/11/28.
//

import SwiftUI
import SSSwiftUIGIFView

struct CitySearchView: View {
    @State var startAnimation = false
    @State var pulse1 = false
    @State var pulse2 = false
    @State var foundPeople:[People] = []
    
    @State var finishAnimation = false
    @State var return15 = false
    
    var body: some View {
        ZStack {
            Color.white.opacity(0.8)
            VStack{
                HStack(spacing :10){
                    Button(action: {self.return15.toggle()}, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 22,weight: .semibold))
                            .foregroundColor(.black)
                    })
                    
                    Text(finishAnimation ? "附近\(peoples.count)人":"附近的人")
                        .font(.title2)
                        .fontWeight(.bold)
//                        .animation(.none)
                    
                    Spacer()
                    
                    
                    Button(action: {
                        verifyAndAddPeople()
                    }, label: {
                        if finishAnimation{
                            Image(systemName: "arrow.clockwise")
                                .font(.system(size: 22,weight: .semibold))
                                .foregroundColor(.black)
                        }
                        else{
                            Image(systemName: "plus")
                                .font(.system(size: 22,weight: .semibold))
                                .foregroundColor(.black)
                        }
                    })
//                        .animation(.none)
                }
                .padding()
                .padding(.top,50)
                
                ZStack{
                    
                    SwiftUIGIFPlayerView(gifName: "15439-blue-ripple")
                        .opacity(0.2)

                    
                    Circle()
                        .stroke(Color.gray.opacity(0.6))
                        .frame(width: 130, height: 130)
                        .scaleEffect(pulse1 ? 3.3: 0)
                        .opacity(pulse1 ? 0 : 1)
                    
                    Circle()
                        .stroke(Color.gray.opacity(0.6))
                        .frame(width: 130, height: 130)
                        .scaleEffect(pulse2 ? 3.3: 0)
                        .opacity(pulse2 ? 0 : 1)
                    
                    Circle()
                        .fill(Color.white)
                        .frame(width: 130, height: 130)
                        .shadow(color: Color.black.opacity(0.07), radius: 5, x: 5, y: 5)
                    
                        Circle()
                            .stroke(Color.blue,lineWidth: 1.4)
                            .frame(width: finishAnimation ? 70 : 30, height: finishAnimation ? 70 : 30)
                            .overlay(
                                Image(systemName: "checkmark")
                                    .font(.largeTitle)
                                    .foregroundColor(.green)
                                    .opacity(finishAnimation ? 1: 0)
                                
                            )
                        
                    ZStack {
                        Circle()
                            .trim(from: 0, to: 0.4)
                        .stroke(Color.blue,lineWidth: 1.4)
                        
                        Circle()
                            .trim(from: 0, to: 0.4)
                            .stroke(Color.blue,lineWidth: 1.4)
                            .rotationEffect(.init(degrees: -180))
                    }
                    .frame(width: 70, height: 70)
                    .rotationEffect(.init(degrees: startAnimation ? 360 : 0))
                    
                    ForEach(foundPeople){ people in
                        Image(people.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .padding(4)
                            .background(Color.white.clipShape(Circle()))
                            .offset(people.offset)
                    }
                }
                .frame(maxHeight:.infinity)
                
                if finishAnimation{
                    VStack {
                        Capsule()
                            .fill(Color.gray.opacity(0.7))
                            .frame(width: 50, height: 4)
                            .padding(.vertical)
                        
                        ScrollView(.horizontal,showsIndicators: false,content: {
                            HStack(spacing:15){
                                ForEach(peoples){people in
                                    VStack(spacing:15){
                                        Image(people.image)
                                            .resizable()
                                            .aspectRatio( contentMode: .fill)
                                            .frame(width: 100, height: 100)
                                            .clipShape(Circle())
                                        Text(people.name)
                                            .font(.title2)
                                            .fontWeight(.bold)
                                        Button(action: {
                                            
                                        }, label: {
                                            Text("添加")
                                                .fontWeight(.semibold)
                                                .padding(.vertical, 10)
                                                .padding(.horizontal,40)
                                                .background(Color.blue)
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                        })
                                    }
                                    .padding(.horizontal)
                                }
                            }
                            .padding()
                            .padding(.bottom,80)
                        })
                        
                    }
                    .background(Color.white)
                    .cornerRadius(25)
                    .transition(.move(edge: .bottom))
                }
            }
            .edgesIgnoringSafeArea(.top)
            .background(Color.black.opacity(0.05))
            .onAppear(perform: {
                animateView()
        })
            if return15{
                CommunityCityView()
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
    
    func verifyAndAddPeople(){
        if foundPeople.count < 5{
            withAnimation {
                var people = peoples[foundPeople.count]
                people.offset = firstFiveOffsets[foundPeople.count]
                foundPeople.append(people)
            }
        }
        else{
            withAnimation(Animation.linear(duration: 0.6)){
                finishAnimation.toggle()
                startAnimation = false
                pulse1 = false
                pulse2 = false
            }
            if !finishAnimation{
                withAnimation{foundPeople.removeAll()}
                animateView()
            }
        }
    }
    
    func animateView(){
        withAnimation(Animation.linear(duration: 1.7).repeatForever(autoreverses: false)){
            startAnimation.toggle()
        }
        withAnimation(Animation.linear(duration: 1.7).repeatForever(autoreverses: false)){
            pulse1.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(Animation.linear(duration: 1.7).repeatForever(autoreverses: false)){
                pulse2.toggle()
            }
        }
    }
}

extension View{
    func getSafeArea()->UIEdgeInsets{
        return UIApplication.shared.windows.first?.safeAreaInsets ?? UIEdgeInsets(top:0,left: 0,bottom: 0,right: 0)
    }
    
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

struct People:Identifiable{
    var id = UUID().uuidString
    var image: String
    var name: String
    var offset: CGSize = CGSize(width: 0, height: 0)
}

var peoples = [
    People(image: "pic1", name: "张家豪"),
    People(image: "pic2", name: "董玉博"),
    People(image: "pic3", name: "窦晨"),
    People(image: "pic4", name: "付崇德"),
    People(image: "pic5", name: "冯佳俊")
]

var firstFiveOffsets:[CGSize] = [
    CGSize(width: 100, height: 100),
    CGSize(width: -100, height: -100),
    CGSize(width: -50, height: 130),
    CGSize(width: 50, height: -130),
    CGSize(width: 120, height: -50)
]

struct CitySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CitySearchView()
    }
}
