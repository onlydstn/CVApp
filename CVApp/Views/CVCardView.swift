//
//  CardView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 19.08.24.
//

import SwiftUI

struct CVCardView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Curriculum Vitae")
                .padding(.top, 12)
                .font(.title2)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
            
            Text("a modern looking UI representing my CV")
                .font(.footnote)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
        }
        
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image("CV")
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
