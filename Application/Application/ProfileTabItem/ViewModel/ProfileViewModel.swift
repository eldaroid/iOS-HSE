//
//  ProfileViewModel.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

final class ProfileViewModel: ProfileViewModelProtocol {
    var profileEventArray: [profileEvent]
    
    init(profileEventArray: [profileEvent]) {
        self.profileEventArray = profileEventArray
    }
}
