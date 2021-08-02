//
//  ProfileHost.swift
//  Application
//
//  Created by Эльдар Попов on 21.07.2021.
//

import SwiftUI

struct ProfileHost: View {
    private var profile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            profileSummary
        }
        .padding()
    }
    
    private var profileSummary: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10, content: {
                HStack {
                    ProfileIcon(with: "photo")
                        .scaledToFill()
                        .frame(width: 130, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding([.top, .leading], 15)
                    VStack(alignment: .leading, spacing: 10) {
                        Text(profile.username)
                            .font(.title)
                            .bold()
                        
                        Text("Quantity tasks: \(profile.countTask)")
                        Text("Main task: \(profile.mainTask)")
                        Text("Preferences: \(profile.seasonalPhoto.rawValue)")
//                        Picker("Preferences", selection: $)
                        Text("Birthday date: ") + Text(profile.goalData, style: .date)
                    }
                }
                Divider()
                Spacer()
            })
        }.navigationTitle(Text("Профиль сотрудника"))
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
//            .environmentObject(ModelData())
    }
}
