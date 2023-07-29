//
//  Team.swift
//  lck_project
//
//  Created by Tony on 2023/07/29.
//

import Foundation

struct Team: Codable {
    let name: String
    let sponser: String
    let headCoach: String
    let coach: String
    
    struct player: Codable {
        let top: String
        let jungle: String
        let mid: String
        let adc: String
        let support: String
    }
    
    let teamLogo: String
    let memberPic: String
}
