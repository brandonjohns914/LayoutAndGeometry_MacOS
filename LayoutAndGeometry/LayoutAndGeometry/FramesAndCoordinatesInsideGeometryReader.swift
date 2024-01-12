//
//  FramesAndCoordinatesInsideGeometryReader.swift
//  LayoutAndGeometry
//
//  Created by Brandon Johns on 1/11/24.
//

import SwiftUI

struct FramesAndCoordinatesInsideGeometryReader: View {
    var body: some View {
        HSplitView {
            OuterView()
                .background(.red)
                .coordinateSpace(name: "Custom")
            VStack {
                GeometryReader{ geo in
                    Text("Hello, World!")
                        .frame(width: geo.size.width * 0.9)
                        .background(.red)
                }
                .background(.green)
                
                Text("More Text")
                    .background(.blue)
            }
            
            
            
        }
        .frame(width: 500, height: 500)
    }
}

#Preview {
    FramesAndCoordinatesInsideGeometryReader()
}


struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader { geo in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                                                print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                                                print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")

                       
                    }
            }
            .background(.orange)
            Text("Right")
        }
    }
}
