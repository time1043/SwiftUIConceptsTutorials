//
//  MyAlternativeScene.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct MyAlternativeScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }

        #if os(macOS)
            Settings {
                SettingsView()
            }
        #endif
    }
}
