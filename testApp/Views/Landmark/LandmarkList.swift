//
//  LandMarkList.swift
//  testApp
//
//  Created by Jaspal Singh on 14/06/24.
//

import SwiftUI

struct LandMarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showOnlyFavorite = false
    
    var filteredList : [Landmark]{
        modelData.landmarks.filter{Landmark in
            (!showOnlyFavorite || Landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showOnlyFavorite){
                    Text("Favorites only")
                }
                ForEach(filteredList){landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }
                    label:{
                        LandmarkRow(landmark:landmark)
                    }
                }
            }
            .animation(.default, value: filteredList)
            .navigationTitle("Landmarks")
        }detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandMarkList()
}
