//
//  EducationView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct ProjectView: View {
    @StateObject private var viewModel = ProjectViewModel()
    @State private var isPulsating: Bool = false
    
    let projects: [ProjectCareer] =
    [ProjectCareer(projectTitle: "Curriculum Vitae (CV)", projectDescription: "a modern looking UI representing my CV", githubLink: "https://github.com/onlydstn/CVApp", icon: "cvicon"),
     ProjectCareer(projectTitle: "Smart Home Simulator", projectDescription: "a simulated SmartHome app", githubLink: "https://github.com/onlydstn/SmartHome-Simulator", icon: "smarthomeicon"),
    ProjectCareer(projectTitle: "Login View", projectDescription: "my first Login View", githubLink: "https://github.com/onlydstn/OnboardingView", icon: "loginicon"),
    ProjectCareer(projectTitle: "Release Radar", projectDescription: "an app that calls the iTunes API for most played songs.", githubLink: "https://github.com/onlydstn/ReleaseRadar?tab=readme-ov-file", icon: "radar")]
    
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
                                    viewModel.selectedProject = project
                                    viewModel.sheetShown = true
                                }, label: {
                                    Image(project.icon)
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
                                
                                VStack(alignment: .leading) {
                                    Text(project.projectTitle)
                                        .font(.subheadline)
                                        .bold()
                                    Text(project.projectDescription)
                                        .font(.footnote)
                                        .padding(.bottom, 4)
                                    Link("GitHub Link", destination: URL(string: "\(project.githubLink)")!)
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
        .sheet(isPresented: $viewModel.sheetShown) {
            if let project = viewModel.selectedProject {
                viewForProject(project, isPresented: $viewModel.sheetShown)
            } else {
                Text("No project selected.")
            }
        }
    }
    
    @ViewBuilder
    private func viewForProject(_ project: ProjectCareer, isPresented: Binding<Bool>) -> some View {
        switch project.projectTitle {
        case "Curriculum Vitae (CV)":
            CVCardView(isPresented: isPresented)
        case "Smart Home Simulator":
            SmartHomeCardView(isPresented: isPresented)
        case "Login View":
            LoginCardView(isPresented: isPresented)
        case "Release Radar":
            ReleaseRadarView(isPresented: isPresented)
        default:
            Text("No view available.")
        }
    }
}
