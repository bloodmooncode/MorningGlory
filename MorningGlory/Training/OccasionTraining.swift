//
//  OccasionTraining.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/22.
//

import SwiftUI

struct OccasionTraining: View {
    @State private var return03 = 0
    @State var StopPractice = false
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                OccasionTrainingTopView(return03: $return03)
                Spacer()
                OccasionTrainingView(StopPractice: $StopPractice)
//                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 110)
            .edgesIgnoringSafeArea(.bottom)
            
            if return03 == 1 {
                MyPracticeMenuView()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
            
            if StopPractice{
                TrainingBarrier()
                    .transition(.scale)
                    .animation(.easeInOut)
            }
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct OccasionTraining_Previews: PreviewProvider {
    static var previews: some View {
        OccasionTraining()
    }
}
