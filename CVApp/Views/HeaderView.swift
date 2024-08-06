//
//  HeaderView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/6/24.
//

import SwiftUI

struct HeaderView: View {
    
    private let infos = UserInfo(name: "Dustin Nuzzo", age: 29, birthDate: "18th February 1995", phoneNumber: "+491711180295", address: "Duisburg, Germany", email: "dustin.nuzzo@icloud.com")
    
    
    var body: some View {
        ZStack {
            Color(red: 0.90, green: 0.90, blue: 0.90)
                .edgesIgnoringSafeArea(.all)
            VStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color(red: 0.3, green: 0.55, blue: 0.8))
                    .frame(height: 135)
                    .edgesIgnoringSafeArea(.top)
                Spacer()
            }
            VStack {
                VStack {
                    Image("profilePicture")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 115, height: 115)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    Text(infos.name)
                        .font(.title2)
                        .bold()
                }
                //.background(.brown)
                .padding(1)
                VStack {
                    Text("Learning Mobile Development \n at Syntax Institut")
                        .multilineTextAlignment(.center)
                        .font(.footnote)
                }
                //.background(.red)
                .padding(1)
                HStack(spacing: 100) {
                    Text(Image(systemName: "house"))
                        .font(.footnote)
                    +
                    Text(" \(infos.address)")
                        .font(.footnote)
                    Text(Image(systemName: "calendar"))
                        .font(.footnote)
                    +
                    Text(" \(infos.birthDate)")
                        .font(.footnote)
                }
                //.background(.yellow)
                .padding(5)
                HStack(spacing: 85) {
                    Text(Image(systemName: "mail"))
                        .font(.footnote)
                    +
                    Text(" \(infos.email)")
                        .font(.footnote)
                    Text(Image(systemName: "phone"))
                        .font(.footnote)
                    +
                    Text(" \(infos.phoneNumber)")
                        .font(.footnote)
                }
                //.background(.purple)
                Divider()
                Spacer()
            }
            //.background(.green)
            .padding(.top)
        }
    }
}
