//
//  EducationView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct ProjectView: View {
    @State private var sheetShown = false
    
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
                                    Image(systemName: "ellipsis")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(7.5)
                                })
                                .buttonStyle(.borderedProminent)
                                .buttonBorderShape(.circle)
                                .tint(.secondary)
                                .foregroundStyle(.white)
                                .frame(width: 50, height: 50)
                                .sheet(isPresented: $sheetShown) {
                                    VStack {
                                        // Inhalt einfügen
                                        Text("Test")
                                        Button("Dismiss") {
                                            sheetShown = false
                                        }
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
