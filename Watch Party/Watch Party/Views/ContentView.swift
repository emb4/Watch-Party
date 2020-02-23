//
//  ContentView.swift
//  Watch Party
//
//  Created by Eric Bates on 2/21/20.
//  Copyright © 2020 Eric Bates. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                TitleText(text: "Watch Party")
                Spacer()
                StylizedButton(title: "Register with Email", imageName: "envelope.fill")
                Divider()
                StylizedButton(title: "Register with Google", imageName: "nil")
                Divider()
                StylizedButton(title: "Register with Apple", imageName: nil)
                Divider()
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.white)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Log in")
                            .foregroundColor(.white)
                            .underline()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




