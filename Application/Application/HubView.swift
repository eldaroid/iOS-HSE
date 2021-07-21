//
//  ContentView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct HubView: View {
    
    let profileEventArray: [profileEvent] = [
        profileEvent(id: UUID().uuidString,
                     title: startedStrings.profileTitleFirst,
                     responsibilities: startedStrings.profileResponsibilities,
                     description: startedStrings.profileDescription),
        profileEvent(id: UUID().uuidString,
                     title: startedStrings.profileTitleSecond,
                     responsibilities: startedStrings.profileResponsibilities,
                     description: startedStrings.profileDescription)
    ]
    let chatArray: [ChatModel] = [
        ChatModel(id: UUID().uuidString,
                  photo: ProfileIcon(),
                  responsibilities: startedStrings.chatResponsibilitiesFirst,
                  description: startedStrings.chatDescriptionFirst,
                  distance: "2 м"),
        ChatModel(id: UUID().uuidString,
                  photo: ProfileIcon(),
                  responsibilities: startedStrings.chatResponsibilitiesSecond,
                  description: startedStrings.chatDescriptionSecond,
                  distance: "30 м"),
        ChatModel(id: UUID().uuidString,
                  photo: ProfileIcon(),
                  responsibilities: startedStrings.chatResponsibilitiesThird,
                  description: startedStrings.chatDescriptionThird,
                  distance: "37 м"),
        ChatModel(id: UUID().uuidString,
                  photo: ProfileIcon(),
                  responsibilities: startedStrings.chatResponsibilitiesFourth,
                  description: startedStrings.chatDescriptionFourth,
                  distance: "50 м"),
        ChatModel(id: UUID().uuidString,
                  photo: ProfileIcon(),
                  responsibilities: startedStrings.chatResponsibilitiesFifth,
                  description: startedStrings.chatDescriptionFifth,
                  distance: nil),
        ChatModel(id: UUID().uuidString,
                  photo: ProfileIcon(),
                  responsibilities: startedStrings.chatResponsibilitiesSixth,
                  description: startedStrings.chatDescriptionSixth,
                  distance: nil)
    ]

    let profileViewModel: ProfileViewModel
    let chatViewModel: ChatViewModel
    
    init() {
        self.profileViewModel = ProfileViewModel(profileEventArray: profileEventArray)
        self.chatViewModel = ChatViewModel(chatArray: chatArray)
    }
    
    var body: some View {
        TabView() {
            
            ProfileTabItemView(viewModel: profileViewModel)
                .tabItem { Label(startedStrings.profileTabItem, systemImage: "person") }
            
            ChatTabItemView(viewModel: chatViewModel)
                .tabItem { Label(startedStrings.chatTabItem, systemImage: "text.bubble") }
            
            SearchTabItemView()
                .tabItem { Label(startedStrings.searchTabItem, systemImage: "magnifyingglass") }

            ConfigurationTabItemView()
                .tabItem { Label(startedStrings.configurationTabItem, systemImage: "gearshape") }

            JustEmptyView()
                .tabItem { Label(startedStrings.emptyTabItem, systemImage: "tv") }
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
