//
//  crmShugApp.swift
//  crmShug
//
//  Created by alex-babich on 11.10.2020.
//

import SwiftUI

@main
struct crmShugApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
