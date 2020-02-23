//
//  StylizedButton2.swift
//  Watch Party
//
//  Created by Eric Bates on 2/22/20.
//  Copyright © 2020 Eric Bates. All rights reserved.
//

import SwiftUI

struct StylizedButton2: View {
    let title: String
    let imageName: String?
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            HStack {
                Spacer()
                
                if imageName != nil {
                    Image(systemName: imageName!)
                    .foregroundColor(.white)
                }
                Text("\(title)")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
            }
            .frame(width: 350, height: 60)
        }
        .background(Color.init(#colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1)))
        .cornerRadius(100)
    }
}

struct StylizedButton2_Previews: PreviewProvider {
    static var previews: some View {
        StylizedButton2(title: "Placeholder Text", imageName: nil)
            .previewLayout(.sizeThatFits)
    }
}
