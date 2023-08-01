//
//  TeamInfoView.swift
//  lck_project
//
//  Created by Tony on 2023/08/01.
//

import SwiftUI

struct TeamInfoView: View {
    var team: Team
    
    var body: some View {
        HStack {
            Image(systemName: "info.circle")
                .foregroundColor(Color.black)
                .font(.system(size: 32))
                .offset(y: -8)
            Text("Team Info")
                .font(Font.custom("CHANEY-UltraExtended", size: 32))
                .padding(.bottom)
                .underline()
        }
        Text("Head Coach: \(team.headCoach)")
            .font(Font.custom("AgencyFB-Bold", size: 27))
            .padding(.bottom)
        Text("Coach: \(team.coach)")
            .font(Font.custom("AgencyFB-Bold", size: 27))
            .padding(.bottom)
        HStack {
            Text("Sponsor:")
                .font(Font.custom("AgencyFB-Bold", size: 27))
            ForEach(team.sponsor, id:\.self) {sponsor in
                Text(sponsor)
                    .font(Font.custom("AgencyFB-Bold", size: 27))
            }
        }.padding(.bottom)
    }
}

struct TeamInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TeamInfoView(team: teams[0])
    }
}
