//
//  ModelData.swift
//  lck_project
//
//  Created by Tony on 2023/07/29.
//

import Foundation

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
