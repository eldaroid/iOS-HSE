//
//  ProfileViewModel.swift
//  ERP
//
//  Created by OUT-Popov-ER on 19.07.2021.
//

import SwiftUI

final class ProfileViewModel: ProfileViewModelProtocol {
    var profileEventArray: [profileEvent]
    
    init(profileEventArray: [profileEvent]) {
        self.profileEventArray = profileEventArray
    }
}

