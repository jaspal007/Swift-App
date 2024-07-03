//
//  LandmarkRow.swift
//  testApp
//
//  Created by Jaspal Singh on 14/06/24.
//

import SwiftUI

struct LandmarkRow: View {
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
//    var landmarkIndex: Int {
//            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
//        }
    
    var body: some View {
        @Bindable var modelData = modelData
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
//            FavoriteButton(isSet: ($modelData.landmarks[landmarkIndex].isFavorite))
        }
        .padding()
    }
}

#Preview{
    LandmarkRow(landmark: ModelData().landmarks[0])
}
