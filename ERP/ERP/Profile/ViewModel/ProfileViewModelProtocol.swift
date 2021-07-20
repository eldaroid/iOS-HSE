//
//  ProfileViewModelProtocol.swift
//  ERP
//
//  Created by OUT-Popov-ER on 19.07.2021.
//

import SwiftUI

protocol ProfileViewModelProtocol: ObservableObject {
    var profileEventArray: [profileEvent] { get set }
}
