/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 31/07/2023
  Last modified: 05/08/2023
  Acknowledgement:
    1. https://www.youtube.com/watch?v=b5KZqZYvKmg&t=410s
    2. https://nilcoalescing.com/blog/ReadingAndSettingColorSchemeInSwiftUI/
*/

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
                        Image(systemName: fv.contains(Team) ? "star.fill" : "star")
                            .foregroundColor(.yellow)
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
