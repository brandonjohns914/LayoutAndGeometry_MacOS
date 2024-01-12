//
//  CreatingCustomAlignmentGuide.swift
//  LayoutAndGeometry
//
//  Created by Brandon Johns on 1/11/24.
//

import SwiftUI

extension VerticalAlignment {
    struct MidAccountAndName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}



struct CreatingCustomAlignmentGuide: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("Ellie")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                Image(.ellie)
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("Full name:")
                Text("Ellie Johns")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                    .font(.largeTitle)
            }
        }
        .frame(width: 800, height: 800)
    }
}

#Preview {
    CreatingCustomAlignmentGuide()
}
