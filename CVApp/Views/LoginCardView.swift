//
//  OnboardingCardView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 20.08.24.
//

import SwiftUI

struct LoginCardView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Login View")
                .padding(.top, 12)
                .font(.title2)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
            
            Text("my first Login View")
                .font(.footnote)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
        }
        
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image("loginview")
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
