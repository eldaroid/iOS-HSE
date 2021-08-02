//
//  ProfileIcon.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

enum ColorsForProfile {
    public static let orangeWhite: [Color] = [Color.orange, Color.white]
    public static let whiteOrange: [Color] = [Color.white, Color.orange]
}

public struct ProfileIcon: View {
    var photo: String
    var colors: [Color]

    init(with photo: String = "person", color: [Color] = ColorsForProfile.whiteOrange) {
        self.photo = photo
        self.colors = color
    }

    public var body: some View {
        ZStack {
            Circle()
                .fill(colors[0])
                .shadow(radius: 15)
            if photo == "person" {
                Image(systemName: photo)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.6)
                    .foregroundColor(colors[1])
            } else {
                Image(photo)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().strokeBorder(Color.gray, lineWidth: 3))
//                    .clipped()
            }
        }
    }
}

struct ProfileIcon_Previews: PreviewProvider {
    static var previews: some View {
//        ProfileIcon(with: "photo")
        ProfileIcon(color: ColorsForProfile.orangeWhite)
    }
}
