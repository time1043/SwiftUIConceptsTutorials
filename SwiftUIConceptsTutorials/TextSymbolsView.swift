//
//  TextSymbolsView.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct TextDemoView: View {
    var body: some View {
        Text("Hamlet")
            .font(.largeTitle)
        Text("by William Shakespeare")
            .font(.caption)
            .italic()
    }
}

struct SymbolsDemoView: View {
    var body: some View {
        HStack {
            Image(systemName: "folder.badge.plus")
            Image(systemName: "heart.circle.fill")
            Image(systemName: "alarm")
        }
        .symbolRenderingMode(.multicolor)
        .font(.largeTitle)
    }
}

struct LabelsDemoView: View {
    var body: some View {
        Label("Favorite Books", systemImage: "books.vertical")
            .labelStyle(.titleAndIcon)
            .font(.largeTitle)
    }
}

#Preview("TextDemoView") {
    TextDemoView()
}

#Preview("SymbolsDemoView") {
    SymbolsDemoView()
}

#Preview("LabelsDemoView") {
    LabelsDemoView()
}
