//
//  ContentView.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // LazyVStack
        // VStack, HStack, ZStack
        VStack {
            // Image
            // init(systemName:)
            // https://developer.apple.com/documentation/swiftui/image/scale
            // https://developer.apple.com/documentation/swiftui/color
            Image(systemName: "globe")
                .imageScale(.large) // .large, Image.Scale.large;
                .foregroundStyle(.tint) // .tint, TintShapeStyle(); .red, Color.red
            Text("Hello, world!")
        }
        .background(.red)
        .padding([.top, .bottom, .trailing, .leading], 20)
        .border(.gray)
        // https://developer.apple.com/documentation/swiftui/view/padding(_:_:)
    }
}

#Preview {
    ContentView()
}
