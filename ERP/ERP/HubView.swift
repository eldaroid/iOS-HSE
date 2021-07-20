//
//  HubView.swift
//  ERP
//
//  Created by OUT-Popov-ER on 19.07.2021.
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
            
            ContentView(viewModel: viewModel)
                .tabItem { Image(systemName: "person").renderingMode(.original) }
            
            JustEmptyView()
                .tabItem { Image(systemName: "text.bubble").renderingMode(.original) }
            
            JustEmptyView()
                .tabItem { Image(systemName: "magnifyingglass").renderingMode(.original) }
            
            JustEmptyView()
                .tabItem { Image(systemName: "gearshape").renderingMode(.original) }
            
            JustEmptyView()
                .tabItem { Image(systemName: "tv").renderingMode(.original) }
        }
        .accentColor(.orange)
    }
}

struct HubView_Previews: PreviewProvider {
    static var previews: some View {
        HubView()
    }
}
