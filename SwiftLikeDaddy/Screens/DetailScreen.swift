//
//  HomeScreen.swift
//  SwiftLikeDaddy
//
//  Created by vietnguyenw on 6/14/22.
//

import SwiftUI

struct DetailScreen: View {
    let landmarkItem: Landmark
    
    var body: some View {
        ScrollView {
            VStack(){
                MapCustom().ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                ImageCustom(image: landmarkItem.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmarkItem.name)
                            .font(.title)
                        FavoriteButton(isSet: .constant(false))
                    }
                    HStack {
                        Text("Mobile developer")
                            .font(.subheadline)
                        Spacer()
                        Text("At some where")
                    }
                }
                Divider()
                VStack{
                    Text(landmarkItem.description)
                }.padding([.top], 20)
                
                Spacer()
            }.padding([.bottom, .leading, .trailing], 20)
        }.navigationTitle("Landmarks Info")
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(landmarkItem: landmarks[0])
    }
}
