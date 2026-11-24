//
//  ImagesShapesView.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct ImagesDemoView: View {
    var body: some View {
        Image("Yellow_Daisy")
            .resizable()
            .scaledToFit()
    }
}

struct AsyncImagesDemoView: View {
    let imageURL = URL(
        string:
            "https://developer.apple.com/tutorials/images/com.apple.tutorials.swiftui-concepts/layout-content-images~dark@2x.jpeg"
    )

    var body: some View {
        // https://developer.apple.com/documentation/swiftui/asyncimage
        AsyncImage(url: imageURL) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(height: 200)
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
            case .failure:
                Image(systemName: "photo")
                    .imageScale(.large)
                    .foregroundStyle(.gray)
                    .frame(height: 200)
            @unknown default:
                EmptyView()
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct ShapesDemoView: View {
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(.blue)
            Circle()
                .foregroundColor(.orange)
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .foregroundColor(.green)
        }
        .aspectRatio(3.0, contentMode: .fit)
        .padding()
    }
}

#Preview("ImagesDemoView") {
    ImagesDemoView()
}

#Preview("AsyncImagesDemoView") {
    AsyncImagesDemoView()
}

#Preview("ShapesDemoView") {
    ShapesDemoView()
}
