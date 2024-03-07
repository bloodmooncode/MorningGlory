//
//  SenderView.swift
//  MineDynamic
//
//  Created by 张原溥 on 2021/10/24.
//

import SwiftUI

struct SenderView: View {
    
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentationMode
    @State var image : Data = .init(count: 0)
    @State var show = false
    @State var name = ""
    @State var description = ""
    @State var favourNum: Int64 = 108
    @State var reviewNum: Int64 = 60
    @State var resendNum: Int64 = 38
    
    
    var body: some View {
        NavigationView{
        VStack{
            VStack(spacing: 0.0) {
                HStack {
                    Image("Content Block")
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("鹿小葵")
                            .font(.system(size: 16,weight:.medium))
                            .foregroundColor(.black)
                        Text(Date(), style: .date)
                            .font(.system(size: 14,weight:.medium))
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    Button(action: {
                        let send = Saving(context: self.moc)
                        send.username = self.name
                        send.descriptions = self.description
                        send.imageD = self.image
                        send.favourNum = self.favourNum
                        send.reviewNum = self.reviewNum
                        send.resendNum = self.resendNum
                        
                        try? self.moc.save()
                        self.presentationMode.wrappedValue.dismiss()
                        self.name = ""
                        self.description = ""
                        
                        
                    }){
                        Image(systemName: "square.and.arrow.up")
                            .fixedSize()
                            .font(.system(size: 20,weight:.medium))
                            .foregroundColor(.white)
                            .padding(14)
                           .background((self.name.count > 0 && self.description.count > 0 && self.image.count > 0) ? Color.blue : Color.gray)
                            .clipShape(Circle())
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 30)
                
                HStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        
                        TextField("写下话题...", text: self.$name)
                            .padding()
        //                    .underline()
                        
                        TextField("说点什么吧...", text: self.$description)
                            .padding()
                            .padding(.bottom, 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6, style: .continuous).stroke(Color(.black), lineWidth: 1))
                        
                        if self.image.count != 0{
                            Button(action:{
                                self.show.toggle()
                            }){
                                Image(uiImage: UIImage(data: self.image)!)
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width - 100, height: 200)
                                    .cornerRadius(6)
                            }
                        } else {
                            Button(action: {
                                self.show.toggle()
                            }){
                                Image(systemName: "camera.viewfinder")
                                    .font(.system(size: 80))
                                    .foregroundColor(.gray)
                                    .frame(width: UIScreen.main.bounds.width - 100, height: 200)
                                    .background(Color.black.opacity(0.1))
                                    .cornerRadius(10)
                                    .shadow(color:.black.opacity(0.3), radius: 10, x: 0, y: 10)
                            }
                            .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .padding()
                }
            }
            .frame(height: UIScreen.main.bounds.height / 1.5)
            
        }.navigationBarItems(trailing: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }){
            Text("取消")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.blue)
        })
        }
        .sheet(isPresented: self.$show, content: {
            ImagePicker(show: self.$show, image: self.$image)
        })
    }
}

struct SenderView_Previews: PreviewProvider {
    static var previews: some View {
        SenderView()
    }
}
