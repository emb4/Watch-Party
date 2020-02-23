//
//  TitleText.swift
//  Watch Party
//
//  Created by Eric Bates on 2/21/20.
//  Copyright © 2020 Eric Bates. All rights reserved.
//

import SwiftUI

struct TitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 50))
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(text: "Placeholder")
            .previewLayout(.sizeThatFits)
    }
}
