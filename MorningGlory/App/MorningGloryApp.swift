//
//  MorningGloryApp.swift
//  MorningGlory
//
//  Created by 张原溥 on 2024/1/3.
//

import SwiftUI
import Firebase

final class AppDelegate:NSObject,UIApplicationDelegate{
    func application(_ application:UIApplication,
                     didFinishLaunchingWithOptions launchOptions:[UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool{
        FirebaseApp.configure()
        return true
    }
}

@main
struct MorningGloryApp: App {
    let persistenceController = PersistenceController.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    @StateObject private var userdata = UserData()
    @StateObject var DownDrag = Drag()
    
    var body: some Scene {
        WindowGroup {
//            CommunitySearch(HotTitle: .constant("精选活动"), HotSubTitle: .constant("期待您的参与"), Hotratio: .constant(1.0))
           MenuView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//            SpeechFunctionView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

