//
//  LandmarkRow.swift
//  testApp
//
//  Created by Jaspal Singh on 14/06/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
        .padding()
    }
}

#Preview("Turtle Rock") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

#Preview("Salmon") {
    
}
