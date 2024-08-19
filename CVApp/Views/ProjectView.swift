//
//  EducationView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct ProjectView: View {
    @State private var sheetShown = false
    @State private var isPulsating = false
    
    let projects: [ProjectCareer] =
    [ProjectCareer(projectTitle: "CV App", projectDescription: "Dustin", startYear: 2024, endYear: 2024, icon: "")]
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text("My Projects")
                    .font(.system(size: 16))
                    .bold()
                    .padding(.leading, 16)
                
                Rectangle()
                    .frame(maxWidth: 350, maxHeight: 1)
                    .foregroundColor(.gray)
                    .cornerRadius(5)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        
                        // erster Eintrag
                        ForEach(projects) { project in
                            HStack(alignment: .top) {
                                Button(action: {
                                    sheetShown = true
                                }, label: {
                                    Image("cvicon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .shadow(radius: 3)
                                        .padding(.top, 8)
                                        .scaleEffect(isPulsating ? 1.2 : 1.0)
                                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isPulsating)
                                })
                                .onAppear {
                                    isPulsating = true
                                }
                                .sheet(isPresented: $sheetShown) {
                                    VStack {
                                        CardView(sheetShown: $sheetShown)
                                    }
                                }
                                
                                VStack(alignment: .leading) {
                                    Text(project.projectTitle)
                                        .font(.footnote)
                                        .bold()
                                    Text(project.projectDescription)
                                        .font(.footnote)
                                    Text(String("\(project.startYear) - today"))
                                        .font(.footnote)
                                }
                                .padding(.leading, 8) // Abstand Text zu Logos
                            }
                            Divider()
                        }
                    }
                    .padding(.horizontal) // Padding für den Inhalt meiner EducationView
                }
            }
            .padding(.vertical) // Padding für Education-Text in der EducationView
        }
        .padding(5) // Padding für die EducationView
    }
}

#Preview {
    ProjectView()
}
