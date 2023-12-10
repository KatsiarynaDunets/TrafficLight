//
//  TrafficLightApp.swift
//  TrafficLight
//
//  Created by Kate on 10/12/2023.
//

import SwiftUI

@main
struct TrafficLightApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
