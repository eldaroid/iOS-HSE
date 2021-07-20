//
//  ContentView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct HubView: View {
    
    let profileEventArray: [profileEvent] = [
        profileEvent(
            id: UUID().uuidString,
            title: startedStrings.profileTitleFirst,
            responsibilities: startedStrings.profileResponsibilities,
            description: startedStrings.profileDescription),
        profileEvent(
            id: UUID().uuidString,
            title: startedStrings.profileTitleSecond,
            responsibilities: startedStrings.profileResponsibilities,
            description: startedStrings.profileDescription)
        ]

    let viewModel: ProfileViewModel
    
    init() {
        self.viewModel = ProfileViewModel(profileEventArray: profileEventArray)
    }
    
    var body: some View {
        TabView() {
            
            ProfileTabItemView(viewModel: viewModel)
                .tabItem { Label("Профиль", systemImage: "person") }
            
            ChatTabItemView()
                .tabItem { Label("Чаты", systemImage: "text.bubble") }
            
            SearchTabItemView()
                .tabItem { Label("Поиск", systemImage: "magnifyingglass") }

            ConfigurationTabItemView()
                .tabItem { Label("Конфиги", systemImage: "gearshape") }

            JustEmptyView()
                .tabItem { Label("Симуляция", systemImage: "tv") }
        }
//        .ignoresSafeArea(.all)
        .accentColor(.orange)
    }
}

struct HubView_Previews: PreviewProvider {
    static var previews: some View {
        HubView()
    }
}
