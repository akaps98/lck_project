//
//  Test.swift
//  lck_project
//
//  Created by Tony on 2023/07/31.
//

import SwiftUI

struct TeamList: View {
    
    var body: some View {
            List(teams) { Team in
                NavigationLink{
                    EachTeam(team: Team)
                } label: {
                    TeamRow(team: Team)
                }.navigationTitle("⭐ LCK Teams ⭐")
            }.background(LinearGradient(gradient: Gradient(colors: [Color("primaryColor"), Color("secondaryColor")]),startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
            .scrollContentBackground(.hidden)
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList()
    }
}
