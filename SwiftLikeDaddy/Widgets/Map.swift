//
//  Map.swift
//  SwiftLikeDaddy
//
//  Created by vietnguyenw on 6/14/22.
//

import SwiftUI
import MapKit

struct MapCustom: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 10.788730, longitude: 106.708750),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        MapCustom()
    }
}
