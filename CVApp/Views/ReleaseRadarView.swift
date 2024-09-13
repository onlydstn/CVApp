//
//  ReleaseRadarView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 13.09.24.
//

import SwiftUI

struct ReleaseRadarView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Release Radar")
                .padding(.top, 12)
                .font(.title2)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
            
            Text("a san app that calls the iTunes API for most played songs.")
                .font(.footnote)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
        }
        
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image("ReleaseRadar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(25)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
    }
}
