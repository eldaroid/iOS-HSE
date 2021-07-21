//
//  ChatViewModel.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

final class ChatViewModel: ChatViewModelProtocol {
    var chatArray: [ChatModel]
    
    init(chatArray: [ChatModel]) {
        self.chatArray = chatArray
    }
}
