//
//  MorningGloryApp.swift
//  MorningGlory
//
//  Created by 张原溥 on 2024/1/3.
//

import SwiftUI

@main
struct MorningGloryApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
