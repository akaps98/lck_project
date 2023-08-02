//
//  FavoritesView.swift
//  lck_project
//
//  Created by Tony on 2023/08/02.
//

import Foundation

extension TeamList {
    class FavoritesView: ObservableObject {
        @Published var teams = [Team]()
        @Published var showingFavs = false
        @Published var savedTeams: Set<Int> = [1,10]
        
        private var db = Favorites()
        
        init() {
            self.savedTeams = db.load()
        }
        
        func sortFavTeams() {
            showingFavs.toggle()
        }
        
        func contains(_ team: Team) -> Bool {
            savedTeams.contains(team.id)
        }
        
        func toggelFav(team: Team) {
            if contains(team) {
                savedTeams.remove(team.id)
            } else {
                savedTeams.insert(team.id)
            }
            db.save(teams: savedTeams)
        }
    }
}
