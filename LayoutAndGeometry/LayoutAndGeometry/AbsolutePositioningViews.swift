//
//  AbsolutePositioningViews.swift
//  LayoutAndGeometry
//
//  Created by Brandon Johns on 1/11/24.
//

import SwiftUI

struct AbsolutePositioningViews: View {
    var body: some View {
        Text("Hello, World!")
            .position(x: 100, y: 100)
            .background(.red)
            .frame(width: 500, height: 500)
    }
}

#Preview {
    AbsolutePositioningViews()
}
