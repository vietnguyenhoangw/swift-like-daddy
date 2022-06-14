//
//  LandmarkList.swift
//  SwiftLikeDaddy
//
//  Created by vietnguyenw on 6/14/22.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites only")
            }.padding([.trailing, .leading], 24)
            
            List(filteredLandmarks, id: \.id) { landmark in
                NavigationLink {
                    DetailScreen(landmarkItem: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
