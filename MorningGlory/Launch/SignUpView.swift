//
//  SignUpView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/20.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State var NickName = ""
    @State var email = ""
    @State var password = ""
//    @State var repassword = ""
    @State var isFocused = false
    @State var LogIn = false
    @State var SignUp = false
    @State var Next = false
    @State var revisible = false
    @State var alert = false
    @State var error = ""
    @State var success = false
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    var body: some View {
        ZStack {
            ZStack {
                Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                Image("Mask Group-1")
                    .edgesIgnoringSafeArea(.all)
                    .scaleEffect(x: 1.05, y: 1.1)
                    .offset(y: 30)
                VStack(alignment: .center, spacing: 20.0) {
                    Image("illustration-1")
                    Text("注册")
                        .font(.system(size: 24,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.2352941176, green: 0.2274509804, blue: 0.2117647059, alpha: 1)))
                    Text("请输入您的信息")
                        .font(.system(size: 12,weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.4705882353, green: 0.4549019608, blue: 0.4274509804, alpha: 1)))

                    VStack(alignment: .center, spacing: 15.0) {
                        TextField("昵称",text:$NickName)
                            .keyboardType(.default)
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
                                if self.revisible{
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
                                self.revisible.toggle()
                            }){
                                Image(systemName: self.revisible ? "eye" : "eye.slash")
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
                    HStack {
                        Text("隐私条款")
                            .font(.system(size: 12,weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                        Spacer()
                    }
                    Button(action: {
//                        self.Next.toggle()
                        self.register()
                    }){
                        Image("下一步按钮")
                    }
                    .frame(width: UIScreen.main.bounds.width / 1.2, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    HStack {
                        Text("已经拥有了账号？")
                            .font(.system(size: 14,weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)))
                        Button(action: {self.LogIn.toggle()}, label: {
                            Text("快捷登录")
                        })
                        .frame(width: UIScreen.main.bounds.width / 5, height:20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    }
                }
                .frame(width: UIScreen.main.bounds.width / 1.2, height: UIScreen.main.bounds.height / 1.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                //.offset(y:isFocused ? -150: 0)
                .animation(.easeInOut)
                .onTapGesture {
                    self.isFocused = false
                    self.hideKeyboard()
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .edgesIgnoringSafeArea(.all)
            
            if self.alert{
                ErrorView(alert: self.$alert, error: self.$error)
            }
            
            if LogIn || Next {
                LoginView()
                    .transition(.move(edge: .leading))
                    .animation(.spring().delay(0.3))
            }
            if success{
                LogOut()
            }
        }
    }
    
    func register() {
        if self.email != "" {
            Auth.auth().createUser(withEmail: self.email, password: self.password){
                (res,err) in
                if err != nil{
                    self.error = err!.localizedDescription
                    self.alert.toggle()
                    return 
                }
                self.success = true
                
                print("success")
                
                UserDefaults.standard.set(true,forKey: "Status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                
            }
        }
        else {
            self.error = "请账户补全信息"
            self.alert.toggle()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
