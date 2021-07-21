//
//  ChatViewModel.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import Foundation

struct ChatModel: Identifiable {
    // for Identifiable protocol
    var id: String
    
    let photo: ProfileIcon
    let responsibilities: String
    let description: String
    let distance: String?
}
