//
//  ProfileIcon.swift
//  ERP
//
//  Created by OUT-Popov-ER on 19.07.2021.
//

import SwiftUI

public struct ProfileIcon: View {
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
