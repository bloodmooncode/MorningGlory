//
//  NewDataView.swift
//  UsualTask
//
//  Created by 张原溥 on 2021/10/20.
//

import SwiftUI

struct NewDataView: View {
    @StateObject var UsualData = UsualSentenceModel()
    @Environment(\.managedObjectContext) var context
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("\(UsualData.updateItem == nil ? "添加": "更新")常用语句")
                    .font(.system(size:24))
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                Spacer()
            }
            .padding()
            
            TextEditor(text: $UsualData.content)
            
            Divider()
                .padding(.horizontal)
            
            Button(action: {
                UsualData.writeData(context: context)
                
            }, label: {
                Label(
                    title: {
                        Text(UsualData.updateItem == nil ? "添加":"更新")
                            .font(.system(size: 20,weight: .bold,design:.rounded))
                            .foregroundColor(.white)
                    },
                    icon: {Image(systemName: "plus")
                            .font(.system(size: 18,weight: .bold,design:.rounded))
                            .foregroundColor(.white)
                    })
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3333333333, green: 0.2, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.1450980392, green: 0.5803921569, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2431372549, green: 0.862745098, blue: 0.9215686275, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    )
                    .cornerRadius(12)
            })
            .padding()
            .disabled(UsualData.content == "" ? true : false)
            .opacity(UsualData.content == "" ? 0.5 : 1)
            
        }
        .background(Color.black.opacity(0.06).ignoresSafeArea(.all))
    }
}

struct NewDataView_Previews: PreviewProvider {
    static var previews: some View {
        NewDataView()
    }
}
