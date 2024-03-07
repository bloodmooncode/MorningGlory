//
//  CommunityCityView.swift
//  Test02
//
//  Created by 张原溥 on 2021/11/27.
//

import SwiftUI
import SDWebImageSwiftUI

struct CommunityImageSearch : View {
    
    @State var expand = false
    @State var search = ""
    @ObservedObject var RandomImages = getData()
    @State var page = 1
    @State var isSearching = false
    @Binding var HotTitle :String
    @Binding var HotSubTitle :String
    @Binding var Hotratio : CGFloat
    
    var body: some View{
        
        VStack(spacing: 0){
            
            HStack{
                
                // Hiding this view when search bar is expanded...
                
                if !self.expand{
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text("\(HotTitle)")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("\(HotSubTitle)")
                            .font(.caption)
                    }
                    .foregroundColor(.black)
                }

                
                Spacer(minLength: 0)
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .onTapGesture {
                        
                        withAnimation{
                            
                            self.expand = true
                        }
                }
                
                // Displaying Textfield when search bar is expanded...
                
                if self.expand{
                    
                    TextField("输入关键词", text: self.$search)
                    
                    // Displaying Close Button....
                    
                    // Displaying search button when search txt is not empty...
                    
                    if self.search != ""{
                        
                        Button(action: {
                            
                            // Search Content....
                            // deleting all existing data and displaying search data...
                            
                            self.RandomImages.Images.removeAll()
                            
                            self.isSearching = true
                            
                            self.page = 1
                            
                            self.SearchData()
                            
                        }) {
                            
                            Text("搜索")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Button(action: {
                        
                        withAnimation{
                            
                            self.expand = false
                        }
                        
                        self.search = ""
                        
                        if self.isSearching{
                            
                            self.isSearching = false
                            self.RandomImages.Images.removeAll()
                            // updating home data....
                            self.RandomImages.updateData()
                        }
                        
                    }) {
                        
                        Image(systemName: "xmark")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black)
                    }
                    .padding(.leading,10)
                }
                
            }
//            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding()
            .background(Color.white)
            
            if self.RandomImages.Images.isEmpty{
                
                // Data is Loading...
                // or No Data...
                
                Spacer()
                
                if self.RandomImages.noresults{
                    
                    Text("No Results Found")
                }
                else{
                    
                    Indicator()
                }
                
                Spacer()
            }
            else{
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    //Collection View...
                    
                    HStack(spacing: Hotratio == 1 ? 15: 15 * Hotratio){
                        
                        ForEach(self.RandomImages.Images,id: \.self){i in
                            
                            HStack{
                                
                                ForEach(i){j in
                                    
                                    AnimatedImage(url: URL(string: j.urls["thumb"]!))
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .scaleEffect(Hotratio)
                                    // padding on both sides 30 and spacing 20 = 50
                                    .frame(width: (UIScreen.main.bounds.width) / 4 * Hotratio, height: Hotratio == 1 ? 100 : 100 * Hotratio)
                                    .cornerRadius(Hotratio == 1 ? 8: 8 * Hotratio)
                                   
                                    .contextMenu {
                                            
                                        // Save Button
                                        
                                        Button(action: {
                                            
                                            // saving Image...
                                            
                                            // Image Quality...
                                            SDWebImageDownloader().downloadImage(with: URL(string: j.urls["small"]!)) { (image, _, _, _) in
                                                
                                                // For this we need permission...
                                                
                                                UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
                                            }
                                            
                                        }) {
                                            
                                            HStack{
                                                
                                                Text("Save")
                                                
                                                Spacer()
                                                
                                                Image(systemName: "square.and.arrow.down.fill")
                                            }
                                            .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                        
                        // Load More Button
                        
                        if !self.RandomImages.Images.isEmpty{
                            
                            if self.isSearching && self.search != ""{
                                
                                HStack{
                                    
                                    Text("Page \(self.page)")
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        
                                        // Updating Data...
                                        self.RandomImages.Images.removeAll()
                                        self.page += 1
                                        self.SearchData()
                                        
                                    }) {
                                        
                                        Text("Next")
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                    }
                                }
                                .padding(.horizontal,25)
                            }
                            
                            else{
                                
                                HStack{
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        
                                        // Updating Data...
                                        self.RandomImages.Images.removeAll()
                                        self.RandomImages.updateData()
                                        
                                    }) {
                                        
                                        Text("Next")
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                    }
                                }
                                .padding(.horizontal,25)
                            }
                        }
                    }
                    .padding(.leading)
                }
            }
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.top)
    }
    
    func SearchData(){
        
        let key = "wzf6AiOxPnCen14P9nvjOcifICRwoyxFS_oduS9GWkc"
        // replacing spaces into %20 for query...
        let query = self.search.replacingOccurrences(of: " ", with: "%20")
        // updating page every time...
        let url = "https://api.unsplash.com/search/photos/?page=\(self.page)&query=\(query)&client_id=\(key)"
        
        self.RandomImages.SearchData(url: url)
    }
}

// Fetching Data....

class getData : ObservableObject{
    
    // Going to Create Collection View.....
    // Thats Why 2d Array...
    @Published var Images : [[Photo]] = []
    @Published var noresults = false
    
    init() {
        
        // Intial Data...
        updateData()
    }
    
    func updateData(){
        
        self.noresults = false
        
        let key = "wzf6AiOxPnCen14P9nvjOcifICRwoyxFS_oduS9GWkc"
        let url = "https://api.unsplash.com/photos/random/?count=30&client_id=\(key)"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
            if err != nil{
                
                print((err?.localizedDescription)!)
                return
            }
            
            // JSON decoding...
            
            do{
                
                let json = try JSONDecoder().decode([Photo].self, from: data!)
                
                
                // going to create collection view each row has two views...
                
                for i in stride(from: 0, to: json.count, by: 1){
                    
                    var ArrayData : [Photo] = []
                    
                    for j in i..<i+1{
                        
                        // Index out bound ....
                        
                        if j < json.count{
                            
                        
                            ArrayData.append(json[j])
                        }
                    }
                    
                    DispatchQueue.main.async {
                        
                        self.Images.append(ArrayData)
                    }
                }
            }
            catch{
                
                print(error.localizedDescription)
            }
            
            
        }
        .resume()
    }
    
    func SearchData(url: String){
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
            if err != nil{
                
                print((err?.localizedDescription)!)
                return
            }
            
            // JSON decoding...
            
            do{
                
                let json = try JSONDecoder().decode(SearchPhoto.self, from: data!)
                
                
                if json.results.isEmpty{
                    
                    self.noresults = true
                }
                else{
                    
                    self.noresults = false
                }
                
                // going to create collection view each row has two views...
                
                for i in stride(from: 0, to: json.results.count, by: 1){
                    
                    var ArrayData : [Photo] = []
                    
                    for j in i..<i+1{
                        
                        // Index out bound ....
                        
                        if j < json.results.count{
                            
                        
                            ArrayData.append(json.results[j])
                        }
                    }
                    
                    DispatchQueue.main.async {
                        
                        self.Images.append(ArrayData)
                    }
                }
            }
            catch{
                
                print(error.localizedDescription)
            }
            
            
        }
        .resume()
    }
}

struct Photo : Identifiable,Decodable,Hashable{
    
    var id : String
    var urls : [String : String]
}

struct Indicator : UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
        
    }
}

// differnt model for search....

struct SearchPhoto : Decodable{

    var results : [Photo]
}

