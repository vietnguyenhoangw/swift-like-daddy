//
//  ContentView.swift
//  SwiftLikeDaddy
//
//  Created by vietnguyenw on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(){
            MapCustom()
                .frame(height: 300)
            ImageCustom()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Daniel")
                    .font(.title)
                HStack {
                    Text("Mobile developer")
                        .font(.subheadline)
                    Spacer()
                    Text("At some where")
                }
            }
            Divider()
            VStack{
                Text("Use this modifier to add a specified amount of padding to one or more edges of the view. Indicate the edges to pad by naming either a single value from Edge.Set, or by specifying an OptionSet that contains edge values")
            }.padding([.top], 20)
            
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
