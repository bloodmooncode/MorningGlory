//
//  HomeViewModel.swift
//  ShoesApp
//
//  Created by 张原溥 on 2021/11/28.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    
    @Published var showchart01 = false
    @Published var showchart02 = false
    @Published var showchart03 = false
    
//    @Published var showchart = false
    
    @Published var selectedSize = ""
    
    @Published var startAnimation = false
    @Published var shoeAnimation = false
    
    
    @Published var showBag = false
    @Published var saveCart = false
    
    @Published var additemtocart = false
    
    @Published var endAnimation = false
    
    @Published var cartItems = 0
    
    func performAnimation(){
        withAnimation(.easeInOut(duration: 0.8)){
            shoeAnimation.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35){
            
            withAnimation(.easeInOut){
                self.showBag.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75){
            
            withAnimation(.easeInOut(duration: 0.5)){
                self.saveCart.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1){
            
            self.additemtocart.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1){
            
            withAnimation(.easeInOut(duration: 0.5)){
                self.endAnimation.toggle()
            }
        }
    }
    
    func resetAll(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){[self] in
            
            withAnimation{
                self.showchart01 = false
                self.showchart02 = false
                self.showchart03 = false
            }
            
            startAnimation = false
            endAnimation = false
            selectedSize = ""
            showBag = false
            shoeAnimation = false
            
            cartItems += 1
        }
    }
}
