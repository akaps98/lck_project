/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 02/08/2023
  Last modified: 02/08/2023
  Acknowledgement: 
*/

import Foundation

struct Favorites {
    private let FAV_KEY = "fav_key"
    
    func save(teams: Set<Int>) {
        let array = Array(teams)
        UserDefaults.standard.set(array, forKey: FAV_KEY)
    }
    
    func load() -> Set<Int> {
        let array = UserDefaults.standard.array(forKey: FAV_KEY) as? [Int] ?? [Int]()
        return Set(array)
    }
}
