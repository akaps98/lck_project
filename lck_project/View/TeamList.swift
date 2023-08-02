//
//  Test.swift
//  lck_project
//
//  Created by Tony on 2023/07/31.
//

import SwiftUI

struct TeamList: View {
    @AppStorage("isDarkMode") private var isDark = false
    @StateObject private var fv = FavoritesView()
    
    var body: some View {
        VStack {
            List(teams) { Team in
                NavigationLink{
                    EachTeam(team: Team)
                } label: {
                    HStack {
                        TeamRow(team: Team)
                        Spacer()
                        Image(systemName: fv.contains(Team) ? "heart.fill" : "heart")
                            .foregroundColor(.red)
                            .onTapGesture {
                                fv.toggelFav(team: Team)
                            }
                    }
                }.navigationTitle("⭐ LCK Teams ⭐")
                .preferredColorScheme(isDark ? .dark : .light)
            }.toolbar{
                ToolbarItem(placement:ToolbarItemPlacement.navigationBarTrailing) {
                    Button(action: {isDark.toggle()}, label: {
                        isDark ? Label("light", systemImage: "sun.max") : Label("Dark", systemImage: "moon.fill")
                    })
                }
            }.background(LinearGradient(gradient: Gradient(colors: [Color(""), Color("primaryColor")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
            .scrollContentBackground(.hidden)
        }.environment(\.colorScheme, isDark ? .dark : .light)
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList()
    }
}
