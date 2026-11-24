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
    var body: some Scene {
        #if os(iOS)
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
        #elseif os(macOS)
            WindowGroup {
                AlternativeContentView()
            }

            Settings {
                SettingsView()
            }
        #endif
    }
}
