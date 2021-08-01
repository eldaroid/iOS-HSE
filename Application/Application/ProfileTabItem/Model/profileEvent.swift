//
//  profileEvent.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import Foundation

let profileEvents: [profileEvent] = [
    profileEvent(id: UUID().uuidString,
                 title: startedStrings.profileTitleFirst,
                 responsibilities: startedStrings.profileResponsibilities,
                 description: startedStrings.profileDescription),
    profileEvent(id: UUID().uuidString,
                 title: startedStrings.profileTitleSecond,
                 responsibilities: startedStrings.profileResponsibilities,
                 description: startedStrings.profileDescription)
]

struct profileEvent: Identifiable {
    // for Identifiable protocol
    public var id: String
    
    let title: String
    let responsibilities: String
    let description: String
}
