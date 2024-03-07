//
//  TagTextView.swift
//  Example
//
//  Created by macOS on 8/3/21.
//

import SwiftUI

struct TagTextView: View {
    @State var tags: [String] = []
    @State var keyword: String = ""
    @State var return17 = false
    
    var allTags: [String] = ["Java", "Python", "JavaScript", "Php", "Swift", "SQL", "Ruby", "Objective-C", "Go", "Assembly", "Basic", "Html", "React", "Kotlin", "C++", "C#"]
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 1) {
                Spacer()
                searchView
                    
                Divider()
                searchResultView
            }
            if return17{
                MineView()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
        }
    }
    
    var theme: TagTheme {
        return TagTheme(font: Font.system(size: 15), foregroundColor: Color.white, backgroundColor: Color.black.opacity(0.1), borderColor: Color.white, shadowColor: Color.green, deletable: true, deleteButtonSize: 10, deleteButtonColor: Color.yellow, spacing: 5, alignment: .leading, inputFieldTextColor: Color.black)
    }
    
    @ViewBuilder
    var searchView: some View {
        HStack(alignment: .center, spacing: 10) {
            Button(action: {
                self.return17.toggle()
            }){
                Image(systemName: "arrow.left")
                    .foregroundColor(.black)
            }
            
            TagTextField(tags: $tags, keyword: $keyword, theme: self.theme, placeholder: "Tags") { _ in
                return allTags.filter{$0.lowercased().contains(keyword.lowercased()) == true}.first
            }
            .padding(10)
            .background(Color.black.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(16)
    }
    
    @ViewBuilder
    var searchResultView: some View {
        if (allTags.filter{$0.lowercased().contains(keyword.lowercased()) == true}).count > 0 {
            List {
                ForEach((allTags.filter{$0.lowercased().contains(keyword.lowercased()) == true}), id: \.self) { tag in
                    Button(action: {
                        if tags.contains(tag) == false {
                            tags.append(tag)
                        }
                        keyword = ""
                    }, label: {
                        Text(tag)
                            .padding()
                    })
                    .listRowInsets(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                }
            }
        }
        else {
            VStack(alignment: .center, spacing: 0) {
                Spacer()
            }
            .frame(height: UIScreen.main.bounds.height / 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TagTextView()
    }
}
