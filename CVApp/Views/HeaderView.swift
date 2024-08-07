//
//  HeaderView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/6/24.
//

import SwiftUI

struct HeaderView: View {
    @State public var isImageTapped = false
    
    private let infos = UserInfo(name: "Dustin Nuzzo", age: 29, birthDate: "18th February 1995", phoneNumber: "+491711180295", address: "Duisburg, Germany", email: "dustin.nuzzo@icloud.com")
    
    
    var body: some View {
        ZStack {
            Color(red: 0.97, green: 0.97, blue: 0.97)
                .edgesIgnoringSafeArea(.all)
            VStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color(red: 0.3, green: 0.55, blue: 0.8))
                    .frame(height: 110)
                    .edgesIgnoringSafeArea(.top)
                    
                Spacer()
            }
            VStack {
                VStack {
                    Image("profilePicture")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .clipShape(Circle())
                        .shadow(radius: 25)
                        .overlay(Circle().stroke(Color.white, lineWidth: 0))
                        .padding(.top, 15)
                        
                    
                    // Bild zoomen wenn es angetippt wird
                        .onTapGesture {
                            withAnimation(.bouncy) {
                                isImageTapped = true
                            }
                        }
                    
                    Text(infos.name)
                        .font(.title2)
                        .bold()
                        .padding(-5)
                }
                .padding(.top, -20) // negatives padding um VStack noch oben zu schieben
                //.background(.brown)
                VStack {
                    Text("Learning Mobile Development \n at Syntax Institut")
                        .fixedSize()
                        .multilineTextAlignment(.center)
                        .font(.footnote)
                        //.background(.red)
                }
                .padding(3)
                //.background(.red)
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.white)
                        .frame(width: 380, height: 55)
                    VStack {
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
                        .padding(3)
                        //.background(.yellow)
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
                        .padding(3)
                    }
                    //.padding(0)
                }
                Divider()
                    .padding(7)
                //.background(.purple)
                VStack {
                    Text("Hello, I'm Dustin and currently learning Swift, SwiftUI and Kotlin @ Syntax Institut. I'm looking for new job opportunities.")
                        .multilineTextAlignment(.center)
                        .font(.footnote)
                }
                .padding(1)
                EducationView()
                    .padding()
            }
            //padding()
            //.background(.green)
            
            // wenn nicht gezoomtes Profilbild getippt wird
            if isImageTapped {
                Color.black.opacity(0.6)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation(.bouncy) {
                            isImageTapped = false
                        }
                    }
                // wenn gezoomtes Profilbild getippt wird
                ZoomedProfilePictureView()
                    .onTapGesture {
                        withAnimation(.bouncy) {
                            isImageTapped = false
                        }
                    }
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    HeaderView()
}
