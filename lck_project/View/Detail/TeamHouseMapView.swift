//
//  TeamHouseView.swift
//  lck_project
//
//  Created by Tony on 2023/08/01.
//

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
