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
import CoreLocation

var teams = decodeJsonFromJsonFile(jsonFileName: "TeamInfo.json")

func decodeJsonFromJsonFile(jsonFileName: String) -> [Team] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil) {
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Team].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error).")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file.")
    }
    return [] as [Team]
}
