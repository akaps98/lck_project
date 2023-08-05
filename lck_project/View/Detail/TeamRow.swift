/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 30/07/2023
  Last modified: 30/07/2023
  Acknowledgement:
*/

import SwiftUI

struct TeamRow: View {
    var team: Team
    
    var body: some View {
        HStack {
            Image(team.teamLogo)
                .resizable()
                .frame(width: 35, height: 30)
            VStack(alignment: .leading) {
                Text(team.name)
                    .font(Font.custom("SinkinSans-500Medium", size: 16.5, relativeTo: .body))
                    .padding(0.2)
                Text("Since: \(team.since)")
                    .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                    .padding(0.2)
            }
        }
    }
}

struct TeamRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeamRow(team: teams[0])
                .previewLayout(.fixed(width: 300, height: 70))
            TeamRow(team: teams[2])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
