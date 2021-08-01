//
//  ContentView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct HubView: View {

    let profileViewModel: ProfileViewModel
    let chatViewModel: ChatViewModel

    init() {
        self.profileViewModel = ProfileViewModel()
        self.chatViewModel = ChatViewModel()
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
