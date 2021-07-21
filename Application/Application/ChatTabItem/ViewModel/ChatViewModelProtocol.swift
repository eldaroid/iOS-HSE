//
//  ChatViewModelProtocol.swift
//  Application
//
//  Created by Эльдар Попов on 21.07.2021.
//

import Foundation

protocol ChatViewModelProtocol: ObservableObject {
    var chatArray: [ChatModel] { get set }
}
