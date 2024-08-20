//
//  CardView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 19.08.24.
//

import SwiftUI

struct CVCardView: View {
    //@Environment(\.presentationMode) var presentationMode
    @Binding var isPresented: Bool
    
    var body: some View {
        
        HStack {
            Text("Curriculum Vitae")
                .padding(.top, 36)
                .font(.title2)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 24)
            
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                isPresented = false
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
