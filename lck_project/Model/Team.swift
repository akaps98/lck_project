//
//  Team.swift
//  lck_project
//
//  Created by Tony on 2023/07/29.
//

import Foundation
import SwiftUI

struct Team: Codable, Identifiable {
    let id: Int
    let name: String
    let since: String
    let sponsor: [String]
    let headCoach, coach: String
    let player: Player
    let teamLogo, memberPic: String
    
    var teamLogoImage: Image {
        Image(teamLogo)
    }
    
    var memberImage: Image {
        Image(memberPic)
    }
}

struct Player: Codable {
    let Top, Jungle, Mid, ADC: String
    let Support: String

    enum Position: String, CodingKey {
        case Top = "Top"
        case Jungle = "Jungle"
        case Mid = "Mid"
        case ADC = "ADC"
        case Support = "Support"
    }
}
