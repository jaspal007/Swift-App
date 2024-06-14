//
//  LandMarkList.swift
//  testApp
//
//  Created by Jaspal Singh on 14/06/24.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks){landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }detail:{
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandMarkList()
}
