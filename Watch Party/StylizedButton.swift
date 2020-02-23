//
//  StylizedButton.swift
//  Watch Party
//
//  Created by Eric Bates on 2/21/20.
//  Copyright © 2020 Eric Bates. All rights reserved.
//

import SwiftUI

struct StylizedButton: View {
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
        .background(Color.init(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1)))
        .cornerRadius(100)
    }
}

struct StylizedButton_Previews: PreviewProvider {
    static var previews: some View {
        StylizedButton(title: "Placeholder Text", imageName: nil)
            .previewLayout(.sizeThatFits)
    }
}
