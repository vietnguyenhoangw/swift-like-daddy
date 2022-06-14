//
//  ContentView.swift
//  SwiftLikeDaddy
//
//  Created by vietnguyenw on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            ImageCustom()
            Text("Daniel")
                .font(.title)
            HStack {
                Text("Mobile developer")
                    .font(.subheadline)
                Spacer()
                Text("At some where")
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
