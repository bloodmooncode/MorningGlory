//
//  Helper.swift
//  Image Gallery
//
//  Created by 张原溥 on 2021/11/26.
//

import Foundation
import SwiftUI

class Helper:NSObject{
    private override init(){
        super.init()
    }
    
    static func getToken() -> Token?{
        guard let url = Bundle.main.url(forResource: "Info.plist", withExtension: nil ) else { return nil }
        guard let data = try? Data(contentsOf: url) else {return  nil }
        
        return try! PropertyListDecoder().decode(Token.self, from: data)
    }
}

struct Token:Codable{
    var accessToken:String
    
    enum CodingKeys:String ,CodingKey{
        case accessToken = "CLIENT_ID"
//        CLIENT_ID
    }
}

struct ImageDetails:Identifiable,Codable{
    var id:String
    var likes:Int
    var description:String?
    var user:User
    var urls:ImageURL
}

struct User:Codable{
    var username:String?
    var id :String
    var profileImage:ProfileImage
    
    enum CodingKeys:String,CodingKey{
        case username,id
        case profileImage = "profile_image"
    }
}

struct ProfileImage:Codable{
    var small:String?
    var medium:String?
    var large:String?
}

struct ImageURL:Codable{
    var thumb:String
    var raw:String
    var full:String
}
