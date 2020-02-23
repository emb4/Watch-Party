//
//  EmailView.swift
//  Watch Party
//
//  Created by Eric Bates on 2/21/20.
//  Copyright © 2020 Eric Bates. All rights reserved.
//

import SwiftUI

struct EmailView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                TitleText(text: "Sign up with email")
                Spacer()
                UsernameBox(title: "Enter your email")
                PasswordBox(title: "Create a password")
                Spacer()
                StylizedButton(title: "Register", imageName: nil)
            }
        }
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}

struct UsernameBox: View {
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            TextField("Type Something", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.all)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .frame(width: 350)
                .cornerRadius(100)
                .multilineTextAlignment(.center)
        }
    }
}

struct PasswordBox: View {
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            SecureField("Type Something", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.all)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .frame(width: 350)
                .cornerRadius(100)
                .multilineTextAlignment(.center)
        }
    }
}
