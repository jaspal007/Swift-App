//
//  LandmarkDetail.swift
//  testApp
//
//  Created by Jaspal Singh on 14/06/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            VStack{
                MapView(coordinates: landmark.locationCoordinates).frame(height: 300)
                CircleImage(image: landmark.image).frame(height: 200).offset(y: -100).padding(.bottom, -100)
                VStack{
                    let text = Text(landmark.name)
                    text.font(.largeTitle).fontWeight(.heavy).fontDesign(.serif).foregroundStyle(.mint)
                    HStack (alignment: .top) {
                        Text(landmark.park).font(.subheadline).fontDesign(.rounded)
                            .fontWeight(.bold)
                        Text(landmark.state).fontDesign(.rounded)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                }
                .padding()
            }
            Divider()
            VStack (alignment: .leading) {
                Text("Description").font(.title2).fontWeight(.black).multilineTextAlignment(.leading)
                Text(landmark.description).multilineTextAlignment(.leading)
            }
            .padding([.leading])
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    @Previewable @Environment(ModelData.self) var modelData
    LandmarkDetail(landmark: modelData.landmarks[0])
}
