//
//  SwiftUIConceptsTutorialsApp.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

// Principle: App, Scene, View
@main
struct SwiftUIConceptsTutorialsApp: App {
    // SwiftUI provides different types of scenes
    // including WindowGroup, Window, DocumentGroup, and Settings.
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}
