//
//  SmartHomeCardView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 20.08.24.
//

import SwiftUI

struct SmartHomeCardView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("SmartHome Simulator")
                .padding(.top, 12)
                .font(.title2)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
            
            Text("a simulated SmartHome app")
                .font(.footnote)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
        }
        
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image("SmartHome")
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

