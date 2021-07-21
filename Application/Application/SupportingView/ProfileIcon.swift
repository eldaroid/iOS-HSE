//
//  ProfileIcon.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

//enum ColorsForProfile {
//    public static let orangeWhite: [Color] = [Color.orange, Color.white]
//    public static let whiteOrange: [Color] = [Color.white, Color.orange]
//}

public struct ProfileIcon: View {
//    var colors:
    
    public var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .shadow(radius: 15)
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.6)
                .foregroundColor(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
        }
    }
}

struct ProfileIcon_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIcon()
    }
}
