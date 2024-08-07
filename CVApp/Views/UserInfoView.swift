//
//  UserInfoView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct UserInfoView: View {
    let address: String
    let birthDate: String
    let email: String
    let phonenumber: String
    let icon: String
    
    var body: some View {
        HStack(spacing: 100) {
            Text(Image(systemName: icon))
                .font(.footnote)
            +
            Text(" \(address)")
                .font(.footnote)
            Text(Image(systemName: icon))
                .font(.footnote)
            +
            Text(birthDate)
                .font(.footnote)
        }
    }
}
