//
//  QuickDialogue.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/26.
//

import SwiftUI

struct QuickDialogue: View {
    @State var return11 = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            Button(action:{self.return11.toggle()}){
                Text("QuickDialogue")
            }
            if return11{
                MenuView()
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}

struct QuickDialogue_Previews: PreviewProvider {
    static var previews: some View {
        QuickDialogue()
    }
}
