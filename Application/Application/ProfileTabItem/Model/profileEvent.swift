//
//  profileEvent.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import Foundation

struct profileEvent: Identifiable {
    // for Identifiable protocol
    public var id: String
    
    let title: String
    let responsibilities: String
    let description: String
}
