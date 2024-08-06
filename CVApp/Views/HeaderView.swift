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
        VStack {
            VStack {
                Text("🙋🏽‍♂️")
                    .font(.largeTitle)
                Text(infos.name)
                    .font(.title)
                    .bold()
            }
            .background(.brown)
            .padding(5)
            VStack {
                Text("Learning Mobile Development \n at Syntax Institut")
                    .multilineTextAlignment(.center)
            }
            .background(.red)
            .padding(5)
            HStack {
                Text(infos.birthDate)
                Text(infos.email)
            }
            .background(.yellow)
            HStack(spacing: 100) {
                Text(infos.address)
                Text(infos.phoneNumber)
            }
            .background(.purple)
        }
        .background(.green)
    }
}
