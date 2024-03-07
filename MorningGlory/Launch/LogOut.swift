//
//  LogOut.swift
//  Test02
//
//  Created by 张原溥 on 2021/10/15.
//

import SwiftUI
import Firebase

struct LogOut: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var AgainLogIn = 0
    
    var body: some View {
    
        ZStack {
            VStack {
                Text("注册成功")
                    .font(.system(size: 24,weight: .bold, design:.default))
                    .foregroundColor(self.color)
                    .padding(.top,20)
                Button(action:{
                    try! Auth.auth().signOut()
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                    AgainLogIn = 1
                }){
                    Text("重新登录")
                        .font(.system(size: 18,weight: .medium, design:.default))
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main
                                .bounds.width - 120)
                }
                .background(Color("Main Color"))
                .cornerRadius(10)
                .padding(.bottom,25)
            }
            .frame(width: UIScreen.main.bounds.width - 70)
            .background(Color.white)
            .cornerRadius(15)
            
            if AgainLogIn == 1{
                LoginView()
            }
        }
        .frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.black.opacity(0.35).edgesIgnoringSafeArea(.all))
    }
}

struct LogOut_Previews: PreviewProvider {
    static var previews: some View {
        LogOut()
    }
}
