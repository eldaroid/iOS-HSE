//
//  profileEvent.swift
//  ERP
//
//  Created by OUT-Popov-ER on 19.07.2021.
//

import Foundation

struct profileEvent: Identifiable {
    // for Identifiable protocol
    var id: String
    
    let title: String
    let responsibilities: String
    let description: String
}
