/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 01/08/2023
  Last modified: 01/08/2023
  Acknowledgement:
*/

import SwiftUI

struct TeamHouseMapView: View {
    var team: Team
    
    var body: some View {
        Image(systemName: "house.fill")
            .foregroundColor(Color.black)
            .font(.system(size: 32))
            .offset(y: -8)
        Text("Team house")
            .font(Font.custom("CHANEY-UltraExtended", size: 32))
            .underline()
            .padding(.bottom)
        MapView(coordinate: team.locationCoordinate)
            .frame(width: 370, height: 300)
            .cornerRadius(35)
            .shadow(radius: 8)
            .padding(.bottom)
    }
}

struct TeamHouseMapView_Previews: PreviewProvider {
    static var previews: some View {
        TeamHouseMapView(team: teams[0])
    }
}
