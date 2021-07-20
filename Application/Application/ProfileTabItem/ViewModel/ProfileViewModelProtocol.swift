//
//  ProfileViewModelProtocol.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//


import SwiftUI

protocol ProfileViewModelProtocol: ObservableObject {
    var profileEventArray: [profileEvent] { get set }
}
