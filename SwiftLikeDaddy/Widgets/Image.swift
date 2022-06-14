//
//  Image.swift
//  SwiftLikeDaddy
//
//  Created by vietnguyenw on 6/14/22.
//

import SwiftUI

struct ImageCustom: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct ImageCustom_Previews: PreviewProvider {
    static var previews: some View {
        ImageCustom(image: Image("kid"))
    }
}
