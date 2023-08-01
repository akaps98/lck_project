//
//  TeamLogoSinceView.swift
//  lck_project
//
//  Created by Tony on 2023/08/01.
//

import SwiftUI

struct TeamLogoSinceView: View {
    var team: Team
    
    var body: some View {
        Image(team.teamLogo)
            .resizable()
            .frame(width: 40, height: 40)
            Text(team.name)
            .font(Font.custom("CHANEY-UltraExtended", size: 30))
                .bold()
                .padding()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            Text("Since: \(team.since)")
            .font(Font.custom("CHANEY-UltraExtended", size: 16))
            .foregroundColor(Color.white)
            .padding(.bottom)
    }
}
