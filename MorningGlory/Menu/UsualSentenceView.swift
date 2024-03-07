//
//  UsualSentenceView.swift
//  UsualTask
//
//  Created by 张原溥 on 2021/10/20.
//

import SwiftUI
import CoreData
import Alamofire

struct UsualSentenceView: View {

    @State var return13 = false

    @StateObject var UsualData = UsualSentenceModel()

    @FetchRequest(entity: Task.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Task.content, ascending: true)], animation: .spring()) var results : FetchedResults<Task>
    @Environment(\.managedObjectContext) var context

    var body: some View {
        ZStack {
            Color(.gray).opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                VStack(spacing:0){

                    HStack{
                        Button(action:{self.return13.toggle()}){
                            Image(systemName: "arrow.left")
                                .font(.system(size: 16,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                        }
                        Spacer()
                        Text("常用语")
                            .font(.system(size: 20,weight:.semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                        Spacer()
                        Button(action:{UsualData.isNewData.toggle()}){
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 24,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.1450980392, green: 0.5803921569, blue: 1, alpha: 1)))
                        }
                    }
                    .padding()
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
//                    .background(Color.white)


                    if results.isEmpty{
                        Spacer()
                        Text("当前没有常用语")
                            .font(.system(size: 20,weight:.semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                        Spacer()
                    }
                    else{
                        ScrollView(.vertical,showsIndicators: false,content: {
                            LazyVStack(alignment: .leading, spacing: 20){
                                ForEach(results) {task in
                                    HStack {
                                        Text(task.content  ?? "")
                                            .font(.system(size: 20,design:.rounded))
                                            .contextMenu{
                                                Button(action: {
                                                    UsualData.EditItem(item: task)
                                                }, label: {
                                                    Text("Edit")
                                                })

                                                Button(action: {
                                                    context.delete(task)
                                                    try! context.save()
                                                }, label: {
                                                    Text("Delete")
                                                })


                                                Button(action:{
                                                    print(task.content  ?? "")
                                                }){
                                                    Image(systemName: "arrow.up.heart.fill")
                                                }

                                            }
                                            Spacer()



                                        }
                                        .frame(width: UIScreen.main.bounds.width - 50)
                                        .padding(.horizontal)
                                    }
                                }
                            .padding()
                            })
                    }
                }
            })
            .edgesIgnoringSafeArea(.top)
            .sheet(isPresented: $UsualData.isNewData ,content: {
                NewDataView(UsualData: UsualData)
        })

            if return13{


            }
        }
        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 2)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}


struct UsualSentenceView_Previews: PreviewProvider {
    static var previews: some View {
        UsualSentenceView()
    }
}

