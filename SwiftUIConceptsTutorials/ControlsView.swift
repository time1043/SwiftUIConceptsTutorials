//
//  ControlsView.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct ControlsView: View {
    @State private var choice = "Option 1"

    private let options = ["Option 1", "Option 2", "Option 3"]

    var body: some View {
        VStack {
            HStack {
                Picker("Choice", selection: $choice) {
                    choiceList()
                }
                Button("OK") {
                    applyChanges()
                }
            }
            .controlSize(.mini)
            HStack {
                Picker("Choice", selection: $choice) {
                    choiceList()
                }
                Button("OK") {
                    applyChanges()
                }
            }
            .controlSize(.large)
        }
    }

    @ViewBuilder
    private func choiceList() -> some View {
        ForEach(options, id: \.self) { option in
            Text(option)
                .tag(option)
        }
    }

    private func applyChanges() {
        print("Selected: \(choice)")
    }
}

#Preview {
    ControlsView()
}
