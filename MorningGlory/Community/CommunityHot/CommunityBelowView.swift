//
//  CommunityBelowView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI
import Alamofire

class Drag: ObservableObject {
    @Published var drag = false
}

struct CommunityBelowView: View {
    @State private var imageDetails = [ImageDetails]()
    @EnvironmentObject var DownDrag :Drag

    
    var body: some View {
        ZStack {
            Color("bgColor")
                .edgesIgnoringSafeArea(.all)
            
                VStack {
                    HStack {
                        ZStack {
                            Image("中部光晕")
                                .scaleEffect(x:2)
                                .offset(x: -20)
                            Text("大家都在看")
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                        }
                        
                        HStack(alignment: .center, spacing: 2.0) {
                            Button(action: {
                                self.DownDrag.drag.toggle()
                            }){
                                Text("下拉看更多")
                            }
                            
                            Image(systemName: "chevron.down")
                        }
                        .font(.system(size: 12,weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.6901960784, blue: 0.7529411765, alpha: 1)))
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .leading)
                    
                    
                    List(imageDetails){ imageDetail in
                        PhotoView(imageDetail: imageDetail)
                    }
                    .onAppear(perform: fetchImageDetails)
                    .listStyle(SidebarListStyle())
            }
                .frame(height: UIScreen.main.bounds.height / 1)
        }
    }
    func fetchImageDetails(){
        guard let accessKey = Helper.getToken()?.accessToken,  let url = URL(string: "https://api.unsplash.com/photos?client_id=\(accessKey)&page=1&per_page=50") else {return}
        
        AF.request(url).responseData{ (responseData) in
            if let data = responseData.data,let imageDetails = try?
                JSONDecoder().decode([ImageDetails].self, from: data){
                self.imageDetails = imageDetails
            }
        }
    }
}

struct CommunityBelowView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityBelowView()
    }
}
