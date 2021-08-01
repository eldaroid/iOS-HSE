//
//  ChatViewModel.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import Foundation

let chatArrays: [ChatModel] = [
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

public struct ChatModel: Identifiable {
    // for Identifiable protocol
    public var id: String
    
    let photo: ProfileIcon
    let responsibilities: String
    let description: String
    let distance: String?
}
