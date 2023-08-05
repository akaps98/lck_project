/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 02/08/2023
  Last modified: 02/08/2023
  Acknowledgement: https://www.youtube.com/watch?v=_lPU9SrBpRI&t=480s
*/

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
