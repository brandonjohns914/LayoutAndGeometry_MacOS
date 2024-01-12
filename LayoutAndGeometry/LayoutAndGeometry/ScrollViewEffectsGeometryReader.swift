//
//  ScrollViewEffectsGeometryReader.swift
//  LayoutAndGeometry
//
//  Created by Brandon Johns on 1/11/24.
//

import SwiftUI

struct ScrollViewEffectsGeometryReader: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader { fullView in
        ScrollView {
            ForEach(0..<50) { index in
                GeometryReader { geo in
                    Text("Row #\(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(colors[index % 7])
                        .rotation3DEffect(
                            .degrees(geo.frame(in: .global).minY - fullView.size.height / 2),
                            axis: (x: 0, y: 1, z: 0))
                        .frame(width: 200, height: 200)
                }
                .frame( width: 200, height: 200)
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewEffectsGeometryReader()
}
