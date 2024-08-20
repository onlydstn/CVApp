//
//  SmartHomeCardView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 20.08.24.
//

import SwiftUI

struct SmartHomeCardView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        HStack {
            Text("SmartHome Simulator")
                .padding(.top, 36)
                .font(.title2)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 24)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.system(size: 24))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 24)
                
            })
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
