//
//  CommunitySearchBar.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/23.
//

import SwiftUI

struct CommunitySearchBar: View {
    @Binding var text: String

        @State private var isEditing = false
            
        var body: some View {
            VStack(alignment: .leading) {
                
                HStack {
                    
                    TextField("搜索你想要的...", text: $text)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 8)
                                
                                if isEditing {
                                    Button(action: {
                                        self.text = ""
                                        
                                    }) {
                                        Image(systemName: "multiply.circle.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                            .padding(.trailing, 8)
                                    }
                                }
                            }
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            self.isEditing = true
                        }
                    
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.text = ""
                            
                            // Dismiss the keyboard
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                        .animation(.default)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .leading)
                .offset(x: -8)
                .shadow(radius: 3, y: 3)
                
                HStack {
                    Text("暑假特辑")
                        .font(.system(size: 14,weight:.medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.695438087, green: 0.7098979354, blue: 0.7571581006, alpha: 1)))
                        .frame(height: 30)
                        .padding(.horizontal,10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.7180619836, green: 0.7375097871, blue: 0.784681499, alpha: 1)), lineWidth: 1)
                        )
                    
                    Text("宿舍好物")
                        .font(.system(size: 14,weight:.medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.695438087, green: 0.7098979354, blue: 0.7571581006, alpha: 1)))
                        .frame(height: 30)
                        .padding(.horizontal,10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.7180619836, green: 0.7375097871, blue: 0.784681499, alpha: 1)), lineWidth: 1)
                        )
                    
                    Text("旅游")
                        .font(.system(size: 14,weight:.medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.695438087, green: 0.7098979354, blue: 0.7571581006, alpha: 1)))
                        .frame(height: 30)
                        .padding(.horizontal,10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.7180619836, green: 0.7375097871, blue: 0.784681499, alpha: 1)), lineWidth: 1)
                        )
                    
                    Text("特长")
                        .font(.system(size: 14,weight:.medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.695438087, green: 0.7098979354, blue: 0.7571581006, alpha: 1)))
                        .frame(height: 30)
                        .padding(.horizontal,10)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15, style: .continuous)
                                 .stroke(Color(#colorLiteral(red: 0.7180619836, green: 0.7375097871, blue: 0.784681499, alpha: 1)), lineWidth: 1)
                        )
                }
                .frame(height: 50)
            }
        }
}

struct CommunitySearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CommunitySearchBar(text: .constant(""))
    }
}
