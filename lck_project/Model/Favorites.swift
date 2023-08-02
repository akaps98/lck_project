//
//  Favorite.swift
//  lck_project
//
//  Created by Tony on 2023/08/02.
//

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
