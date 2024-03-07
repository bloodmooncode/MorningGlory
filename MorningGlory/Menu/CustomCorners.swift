//
//  CustomCorners.swift
//  ShoesApp
//
//  Created by 张原溥 on 2021/11/28.
//

import SwiftUI

struct CustomCorners: Shape{
    
    var corners: UIRectCorner
    var radius:CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
    
}
