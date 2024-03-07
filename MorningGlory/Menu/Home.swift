//
//  Home.swift
//  ShoesApp
//
//  Created by 张原溥 on 2021/11/28.
//

import SwiftUI

struct Home: View {
    
    @StateObject var homedata = HomeViewModel()
    
    @Namespace var animation
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            VStack(spacing:10){
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Text("优选商城")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "bag.fill")
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .overlay(
                                Text("\(homedata.cartItems)")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .background(Color("bgColor04"))
                                    .clipShape(Circle())
                                    .offset(x:15,y : -10)
                                    .opacity(homedata.cartItems != 0 ? 1  : 0.01)
                            )
                    })
                }
                .padding()
                
                VStack{
                    
                    VStack(alignment: .leading, spacing: 10,content: {
                        Text("MorningGlory 推荐")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        Text("助听器")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        HStack(alignment:.bottom){

                            VStack{
                                Text("价格")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                
                                Text("¥500")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("bgColor04"))
                            }
                            
                            Image("airphone")
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                                .padding(.horizontal,30)
                                .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                        }
                    })
                    .padding(.horizontal)
                    .padding(.vertical,20)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(20)
                    .overlay(
                        Capsule()
                            .fill(Color.blue)
                            .frame(width: 4, height: 45)
                            .padding(.top)
                        ,alignment: .topLeading
                    )
//                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            homedata.showchart01.toggle()
//                            print("showchart01=\(homedata.showchart01)")
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10,content: {
                        Text("MorningGlory 推荐")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        Text("助听器")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        HStack(alignment:.bottom){

                            VStack{
                                Text("价格")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                
                                Text("¥500")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("bgColor04"))
                            }
                            
                            Image("airphone")
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                                .padding(.horizontal,30)
                                .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                        }
                    })
                    .padding(.horizontal)
                    .padding(.vertical,20)
                    .background(Color.pink.opacity(0.1))
                    .cornerRadius(20)
                    .overlay(
                        Capsule()
                            .fill(Color.pink)
                            .frame(width: 4, height: 45)
                            .padding(.top)
                        ,alignment: .topLeading
                    )
//                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            homedata.showchart02.toggle()
//                            print("showchart02=\(homedata.showchart02)")
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10,content: {
                        Text("MorningGlory 推荐")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        Text("助听器")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        HStack(alignment:.bottom){

                            VStack{
                                Text("价格")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                
                                Text("¥500")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("bgColor04"))
                            }
                            
                            Image("airphone")
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                                .padding(.horizontal,30)
                                .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                        }
                    })
                    .padding(.horizontal)
                    .padding(.vertical,20)
                    .background(Color.purple.opacity(0.1))
                    .cornerRadius(20)
                    .overlay(
                        Capsule()
                            .fill(Color.purple)
                            .frame(width: 4, height: 45)
                            .padding(.top)
                        ,alignment: .topLeading
                    )
//                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            homedata.showchart03.toggle()
//                            print("showchart03=\(homedata.showchart03)")
                        }
                    }
                }
                .frame(height: UIScreen.main.bounds.height / 1.1)
            }
            .blur(radius: (homedata.showchart01 || homedata.showchart02 || homedata.showchart03) ? 20 : 0)
            
            AddToChart(animation:animation)
                .offset(y: (homedata.showchart01 || homedata.showchart02 || homedata.showchart03) ? homedata.startAnimation ? 500: -80 : 500)
                .environmentObject(homedata)
                .onTapGesture{
                    withAnimation(.easeInOut){
                        homedata.showchart01 = false
                        homedata.showchart02 = false
                        homedata.showchart03 = false
                    }
                }
            
            if homedata.startAnimation{
                VStack{
                    Spacer()
                    ZStack{
                        
                        Color.white
                            .frame(width: homedata.shoeAnimation ? 100 : getRect().width * 1.3 , height: homedata.shoeAnimation ? 100 : getRect().width * 1.3)
                            
                            .clipShape(Circle())
                            .opacity(homedata.shoeAnimation ? 1 : 0.01)
                        Image("airphone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .matchedGeometryEffect(id: "AIRPHONE", in: animation)
                            .frame(width: 80, height: 80)
                    }
                    .offset(y:homedata.saveCart ? 70: -120)
                    .scaleEffect(homedata.saveCart ? 0.6 : 1)
                    .onAppear(perform: homedata.performAnimation)
                    
                    if !homedata.saveCart{
                        Spacer()
                    }
                    
                    Image(systemName: "bag\(homedata.additemtocart ? ".fill" : "")")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(homedata.additemtocart ? Color("bgColor04") : Color.blue)
                        .clipShape(Circle())
                        .offset(y:homedata.showBag ? -50 :300)
                    
                }
                .frame(width: getRect().width)
                
                .offset(y: homedata.endAnimation ? 500 : -80)
            }
        }
        .ignoresSafeArea(.all,edges: .bottom)
        .background(Color.white.ignoresSafeArea())
        
        .onChange(of: homedata.endAnimation, perform: { value in
            if homedata.endAnimation{
                homedata.resetAll()
            }
        })
    }
}

struct AddToChart: View{
    
    @EnvironmentObject var homeData:HomeViewModel
    var  animation:Namespace.ID
    var body: some View{
        VStack{
            
            HStack(spacing:15){
                
                if !homeData.startAnimation{
                    Image("airphone")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                        .matchedGeometryEffect(id: "AIRPHONE", in:animation)
                }
                
                VStack(alignment: .trailing, spacing: 10, content: {
                    Text("MorningGlory 推荐")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.trailing)
                    
                    Text("¥500")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                })
            }
            .padding()
            
            Divider()
            
            Text("选择型号")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding(.top,10)
            
            let columns = Array(repeating: GridItem(.flexible(),spacing: 12), count: 4)
            
            LazyVGrid(columns: columns, alignment: .leading, spacing: 15, content: {
                ForEach(sizes,id:\.self){size in
                    Button(action: {
                        withAnimation {
                            homeData.selectedSize = size
                        }
                    }, label: {
                        Text(size)
                            .fontWeight(.semibold)
                            .foregroundColor(homeData.selectedSize == size ? .white : .black)
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(homeData.selectedSize == size ? Color("bgColor04") : Color("bgColor04").opacity(0.1))
                            .cornerRadius(8)
                    })
                }
            })
                .padding(.top)
            
            
            Button(action: {
                withAnimation(.easeInOut(duration: 0.7)){
                    homeData.startAnimation.toggle()
                }
                
            }, label: {
                Text("添加到购物车")
                    .fontWeight(.bold)
                    .foregroundColor(homeData.selectedSize == "" ? .black : .white)
                    .padding(.vertical)
                    .frame(maxWidth:.infinity)
                    .background(homeData.selectedSize == "" ? Color("bgColor04").opacity(0.1): Color("bgColor04"))
                    .cornerRadius(12)
            })
                .disabled(homeData.selectedSize == "")
                .padding(.top)
        }
        .padding()
        .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight
                                                               ], radius: 35)))
    }
}

let sizes = ["15-20","20-22","22-24","24-26","26-30"]


