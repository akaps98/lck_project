/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 29/07/2023
  Last modified: 01/08/2023
  Acknowledgement:
*/

import Foundation
import SwiftUI
import CoreLocation

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
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
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

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
