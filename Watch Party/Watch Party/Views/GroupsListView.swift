//
//  GroupsListView.swift
//  Watch Party
//
//  Created by Eric Bates on 2/21/20.
//  Copyright © 2020 Eric Bates. All rights reserved.
//

import SwiftUI

struct GroupsListView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(#colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    List {
                        Text("My Groups")
                            .foregroundColor(Color(#colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1)))
                            .font(.largeTitle)
                        GroupCell(title: "Example Group", numberOfMembers: 6)
                        GroupCell(title: "Another Example", numberOfMembers: 4)
                    }
                    Spacer()
                    VStack {
                        StylizedButton2(title: "Create Group", imageName: "plus")
                        StylizedButton2(title: "Join Group", imageName: "person.3.fill")
                    }
                }
            }
        }
    }
}

struct GroupsListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsListView()
    }
}

struct GroupCell: View {
    
    let title: String
    let numberOfMembers: Int
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1)))
                    .frame(height: 50)
                Image(systemName: "person.3.fill")
                    .foregroundColor(Color(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1)))
            }
            HStack {
                Text("\(numberOfMembers) members")
                Spacer()
                Image(systemName: "tv")
                Image(systemName: "tv.fill")
            }
        }
    }
}
