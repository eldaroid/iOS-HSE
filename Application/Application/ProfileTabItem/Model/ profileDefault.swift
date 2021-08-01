//
//   profileDefault.swift
//  Application
//
//  Created by Эльдар Попов on 21.07.2021.
//

import Foundation

struct Profile {
    var username: String
    var countTask = 4
    var mainTask = "Согласовать закупку"
    var seasonalPhoto = Season.winter
    var goalData = Date()
    var responsibilities = startedStrings.chatResponsibilitiesFourth

    static let `default` = Profile(username: "Имя Фамилия")
    
    enum Season: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }

        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}

