//
//  LoginView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/20.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var isFocused = false
    @State var Enter = false
    @State var SignUp = false
    @State var visible = false
    @State var alert = false
    @State var error = ""
    @State var success = false
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    var body: some View {
    
        ZStack {
            VStack {
                if self.status{
                    LogOut()
                }
                else{
                    ZStack {
                        Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                            .edgesIgnoringSafeArea(.all)
                        Image("Mask Group-1")
                            .edgesIgnoringSafeArea(.all)
                            .scaleEffect(x: 1.05, y: 1.1)
        //                    .offset(y: 30)
                        VStack(alignment: .center, spacing: 20.0) {
                            Image("Frame 226")
                            Text("登录")
                                .font(.system(size: 24,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2352941176, green: 0.2274509804, blue: 0.2117647059, alpha: 1)))
                            Text("其他登录方式")
                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.4705882353, green: 0.4549019608, blue: 0.4274509804, alpha: 1)))

                            Image("Frame 232")
                            VStack(alignment: .center, spacing: 15.0) {
                                TextField("账号",text:$email)
                                    .keyboardType(.emailAddress)
                                    .font(.system(size: 12,weight: .bold, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2321771085, green: 0.2274139524, blue: 0.2143637836, alpha: 1)))
                                    .padding(.leading)
                                    .frame(width: UIScreen.main.bounds.width / 1.2, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .overlay(
                                         RoundedRectangle(cornerRadius: 8, style: .continuous)
                                             .stroke(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)), lineWidth: 1)
                                    )
                                    .onTapGesture {
                                        self.isFocused = true
                                    }
                                HStack {
                                    VStack{
                                        if self.visible{
                                            TextField("密码",text: self.$password)
                                                .keyboardType(.default)
                                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                                .foregroundColor(Color(#colorLiteral(red: 0.2321771085, green: 0.2274139524, blue: 0.2143637836, alpha: 1)))
                                                .padding(.leading)
                                        }
                                        else{
                                            SecureField("密码",text:$password)
                                                .keyboardType(.default)
                                                .font(.system(size: 12,weight: .bold, design: .rounded))
                                                .foregroundColor(Color(#colorLiteral(red: 0.2321771085, green: 0.2274139524, blue: 0.2143637836, alpha: 1)))
                                                .padding(.leading)
                                        }
                                        
                                    }
                                    
                                    Button(action: {
                                        self.visible.toggle()
                                    }){
                                        Image(systemName: self.visible ? "eye" : "eye.slash")
                                            .foregroundColor(Color(#colorLiteral(red: 0.2321771085, green: 0.2274139524, blue: 0.2143637836, alpha: 1)))
                                            .padding(.trailing)
                                        
                                    }
                                }

                                .frame(width: UIScreen.main.bounds.width / 1.2, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay(
                                     RoundedRectangle(cornerRadius: 8, style: .continuous)
                                         .stroke(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)), lineWidth: 1)
                                )
                                .onTapGesture {
                                    self.isFocused = true
                                }
                            }
                            
                            Button(action:{
                                
                            }){
                                Text("忘记密码")
                                    .font(.system(size: 12,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                            }
                            
                            
                            
                            
                            Button(action: {
        //                        self.Enter.toggle()
                                self.verify()
                            }){
                                Image("登录按钮")
                            }
                            .frame(width: UIScreen.main.bounds.width / 1.2, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(y:30)
                            .scaleEffect(x:0.95)

                            
                            HStack {
                                Text("还没有账号")
                                    .font(.system(size: 14,weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                                Button(action: {self.SignUp.toggle()}){
                                    Text("我要注册")
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width / 1.2, height: UIScreen.main.bounds.height / 1.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        //.offset(y:isFocused ? -150: 0)
                        .animation(.easeInOut)
                        .onTapGesture {
                            self.isFocused = true
                            self.hideKeyboard()
                        }
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .edgesIgnoringSafeArea(.all)
            
            if SignUp{
                SignUpView()
                    .transition(.move(edge: .trailing))
                    .animation(.spring().delay(0.3))
            }
            
            if success{
                GuideView()
                    .transition(.scale)
                    .animation(.easeInOut)
            }
            
            if self.alert{
                ErrorView(alert: self.$alert, error: self.$error)
            }
        }
    }
    func verify(){
        if self.email != "" && self.password != ""{
            Auth.auth().signIn(withEmail: self.email, password: self.password){(res,err) in
                if err != nil{
                    self.error = err!.localizedDescription
                    self.alert.toggle()
                    return
                }
                
                print("success")
                self.success =  true
                UserDefaults.standard.set(true,forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }
        }
        else{
            self.error = "请补全账号和密码信息"
            self.alert.toggle()
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
        }
    }
}
