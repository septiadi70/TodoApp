//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Andi Septiadi on 25/07/23.
//

import SwiftUI

@main
struct TodoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
