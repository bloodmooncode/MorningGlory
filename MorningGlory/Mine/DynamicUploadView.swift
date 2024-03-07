//
//  DynamicUploadView.swift
//  Test02
//
//  Created by 张原溥 on 2021/11/27.
//

import SwiftUI
import CoreData

struct DynamicUploadView: View {
    @Environment(\.managedObjectContext) private var moc

    @FetchRequest( entity: Saving.entity(), sortDescriptors:[
        NSSortDescriptor(keyPath: \Saving.username, ascending: true),
        NSSortDescriptor(keyPath: \Saving.imageD, ascending:true),
        NSSortDescriptor(keyPath: \Saving.favourNum, ascending: false),
        NSSortDescriptor(keyPath: \Saving.descriptions, ascending: true),
        NSSortDescriptor(keyPath: \Saving.resendNum, ascending: false),
        NSSortDescriptor(keyPath: \Saving.reviewNum, ascending: false),
        NSSortDescriptor(keyPath: \Saving.date, ascending: false),
        NSSortDescriptor(keyPath: \Saving.favour, ascending: false),
        NSSortDescriptor(keyPath: \Saving.resend, ascending: false),
        NSSortDescriptor(keyPath: \Saving.review, ascending: false),
        
    ])
    var saving: FetchedResults<Saving>

    @State var image : Data = .init(count: 0)
    @State var show = false
    @Environment(\.presentationMode) var presentationMode
    @State var name = ""
    @State var description = ""
    
    init() {
//         //Use this if NavigationBarTitle is with Large Font
//         UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]

         //Use this if NavigationBarTitle is with displayMode = .inline
         UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.blue]
     }
    
    var body: some View {
        
        ZStack {
            NavigationView {
                VStack {
                Spacer()
                HStack(alignment: .center, spacing: 60.0) {
                    VStack(alignment: .center) {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("关注")
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                    VStack(alignment: .center)  {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("动态")
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4993512034, blue: 1, alpha: 1)))
                    VStack(alignment: .center) {
                        Text("150")
                            .font(.system(size: 32,weight:.bold))
                        Text("粉丝")
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)))
                }
                
                HStack(alignment: .center, spacing: 20.0) {
                    Text("参与活动")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(height: 24, alignment: .center)
                        .padding(.horizontal , 10)
                        .background(Color(#colorLiteral(red: 0.2360943556, green: 0.3501724005, blue: 1, alpha: 1)))
                        .cornerRadius(12)
                    Text("经验分享")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                        .frame(height: 24, alignment: .center)
                        .padding(.horizontal , 10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)), lineWidth: 1)
                        )
                    Text("安利")
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                        .frame(height: 24, alignment: .center)
                        .padding(.horizontal , 10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)), lineWidth: 1)
                        )
                    HStack {
                        Text("查看全部标签")
                        Image(systemName: "chevron.right")
                    }
                    .font(.system(size: 12,weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.6230725646, green: 0.6473369598, blue: 0.707352519, alpha: 1)))
                }
                .padding(.vertical)
                
                ScrollView(.vertical,showsIndicators: false){
//                    List{
                    ForEach(saving, id: \.self){ save in

                            VStack(alignment:.center){
                                
                                HStack {
                                    Image("Frame 1513")
                                        .scaleEffect(0.6)
                                    
                                    VStack(alignment: .leading) {
                                        Text("\(save.username ?? "")")
                                            .font(.system(size: 16,design:.rounded))
                                            .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
                                            .contextMenu{
                                                Button(action: {
                                                    moc.delete(save)
                                                    try? self.moc.save()
                                                }, label:{
                                                    Text("删除")
                                                })
                                            }
                                        
                                        Text("\(save.descriptions ?? "" )")
                                            .font(.system(size: 12,design:.rounded))
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                
                                HStack {
                                    Spacer()
                                    VStack {
                                        Image(uiImage: UIImage(data: save.imageD ?? self.image)!)
                                            .resizable()
                                            .frame(height: UIScreen.main.bounds.height / 4)
                                            .aspectRatio(contentMode: .fit)

                                        .cornerRadius(8)

                                        HStack{
                                            
                                            Spacer()
                                            
                                            VStack {
                                                Button(action: {
                                                    save.favour.toggle()
                                                    if save.favour{
                                                        save.favourNum += 1
                                                    }
                                                    if !save.favour{
                                                        save.favourNum -= 1
                                                    }
                                                    try? self.moc.save()
                                                }){
                                                    Image(systemName: save.favour ? "hand.thumbsup.fill" : "hand.thumbsup" )
                                                }
                                                Text("\(save.favourNum)")
                                            }
                                            
                                            VStack {
                                                Button(action: {
                                                    save.review.toggle()
                                                    if save.review{
                                                        save.reviewNum += 1
                                                    }
                                                    if !save.review{
                                                        save.reviewNum -= 1
                                                    }
                                                    try? self.moc.save()
                                                }){
                                                    Image(systemName: save.review ? "star.fill" : "star" )
                                                }
                                                Text("\(save.reviewNum)")
                                            }
                                            
                                            VStack {
                                                Button(action: {
                                                    save.resend.toggle()
                                                    if save.resend{
                                                        save.resendNum += 1
                                                    }
                                                    if !save.resend{
                                                        save.resendNum -= 1
                                                    }
                                                    try? self.moc.save()
                                                }){
                                                    Image(systemName: save.resend ? "arrowshape.turn.up.right.fill" : "arrowshape.turn.up.right" )
                                                }
                                                Text("\(save.resendNum)")
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 100)
                                }
                                
                                
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                        
                    }
                    .onDelete{ indexSet in
                        for index in indexSet{
                            self.moc.delete(self.saving[index])
                            try? self.moc.save()
                        }
                    }
                    .padding()
                    }
                .edgesIgnoringSafeArea(.all)
            }
                .navigationBarTitle(Text("发布动态"),displayMode: .inline)

                .navigationBarItems(
                    trailing: Button(action: {
                    self.show.toggle()
                }){
                    Image(systemName: "plus")
                        .font(.system(size: 16,weight:.medium))
                        .foregroundColor(.blue)
                })
            }
            .sheet(isPresented: self.$show){
                SenderView().environment(\.managedObjectContext, self.moc)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main
                .bounds.height - 150)
        .background(Color.white)
    }
}
