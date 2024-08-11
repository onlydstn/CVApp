//
//  ZoomedProfilePictureView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct ZoomedProfilePictureView: View {
    var body: some View {
        VStack {
            Image("profilePicture")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300) // Bildgröße
                .clipShape(Circle())
                .shadow(radius: 20)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
        }
    }
}
