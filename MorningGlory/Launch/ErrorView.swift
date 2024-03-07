//
//  ErrorView.swift
//  Test02
//
//  Created by 张原溥 on 2021/10/15.
//

import SwiftUI

struct ErrorView: View {
    @State var color = Color.black.opacity(0.7)
    @Binding var alert: Bool
    @Binding var error: String
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Error")
                        .font(.system(size: 28,weight: .bold, design:.default))
                        .foregroundColor(self.color)
                    Spacer()
                }
                .padding(.top, 10)
                .padding(.horizontal,25)
                
                Text(self.error)
                    .foregroundColor(self.color)
                    .padding(.top)
                    .padding(.horizontal,25)
                
                Button(action:{
                    self.alert.toggle()
                }){
                    Text("取消")
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
        }
        .frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.black.opacity(0.35).edgesIgnoringSafeArea(.all))
    }
    
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(alert: .constant(false), error: .constant("ZYP"))
    }
}

