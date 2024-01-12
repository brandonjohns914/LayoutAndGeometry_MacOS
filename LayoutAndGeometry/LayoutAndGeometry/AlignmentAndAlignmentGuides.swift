//
//  AlignmentAndAlignmentGuides.swift
//  LayoutAndGeometry
//
//  Created by Brandon Johns on 1/11/24.
//

import SwiftUI

struct AlignmentAndAlignmentGuides: View {
    var body: some View {
        HSplitView {
            VStack {
                ForEach(0..<10) { position in
                        Text("Number \(position)")
                        .alignmentGuide(.leading) { _ in Double(position) * -10}
                }
            }
            .background(.red)
            .frame(width: 400, height: 400)
            .background(.blue)
            
            VStack(alignment: .leading) {
                Text("Hello, World!")
                    .alignmentGuide(.leading) { d in d[.trailing]}
                Text("This is a longer line of text")
            }
            .background(.red)
            .frame(width: 400, height: 400)
            .background(.blue)
            
            HStack(alignment: .lastTextBaseline) {
                Text("Live")
                    .font(.caption)
                Text("long")
                Text("and")
                    .font(.title)
                Text("prosper")
                    .font(.largeTitle)
            }
            .padding(50)
            
            Text("Live long and prosper")
                .frame(width: 300, height: 300, alignment: .topLeading)
        }
    }
}

#Preview {
    AlignmentAndAlignmentGuides()
}
