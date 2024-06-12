//
//  CircleImage.swift
//  testApp
//
//  Created by Jaspal Singh on 13/06/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("ttpd").frame(width: 250).clipShape(Circle()).overlay{Circle().stroke(.gray, lineWidth: 5)}.shadow(radius: 10)
    }
}

#Preview {
    CircleImage()
}
