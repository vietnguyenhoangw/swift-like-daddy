//
//  HomeListScreen.swift
//  SwiftLikeDaddy
//
//  Created by vietnguyenw on 6/14/22.
//

import SwiftUI

struct HomeListScreen: View {
    var body: some View {
        NavigationView {
            LandmarkList().navigationTitle("Landmarks")
        }
    }
}

struct HomeListScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeListScreen()
    }
}
