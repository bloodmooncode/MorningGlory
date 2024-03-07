//
//  MineNewDynamic.swift
//  Test02
//
//  Created by 张原溥 on 2021/10/24.
//

import SwiftUI

struct MineNewDynamic: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "arrow.left")
                    .font(.system(size: 16,weight:.medium))
                    .foregroundColor(.white)
                Spacer()
                Text("发布动态")
                    .font(.system(size: 20,weight:.bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .padding(.top)
            .background(Color.blue)
            
            HStack(spacing: 15.0) {
                Image("Content Block")
                VStack {
                    Text("鹿小葵")
                        .font(.system(size: 16,weight:.medium))
                    Spacer()
                }
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 20,weight:.medium))
                    .foregroundColor(.white)
                    .padding(14)
                    .background(Color.blue)
                    .clipShape(Circle())
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width, height: 80)
            
            Image(systemName: "camera.viewfinder")
                .font(.system(size: 40,weight:.medium))
                .foregroundColor(.gray)
            
            
        }
    }
}

struct MineNewDynamic_Previews: PreviewProvider {
    static var previews: some View {
        MineNewDynamic()
    }
}

