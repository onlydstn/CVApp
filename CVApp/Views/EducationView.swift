//
//  EducationView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct EducationView: View {
    let jobs: [Experience] =
    [Experience(jobTitle: "Student @ Syntax Institut", companyName: "Syntax Institut", startYear: 2024, endYear: 2025, icon: "logo1"),
     Experience(jobTitle: "Sales Consultant", companyName: "Deutsche Telekom AG", startYear: 2023, endYear: 2024, icon: "logo2"),
     Experience(jobTitle: "Sales Manager Assistant", companyName: "o2 Telefonice Germany", startYear: 2022, endYear: 2023, icon: "logo3"),
     Experience(jobTitle: "Selfemployed Agency Manager", companyName: "Deutsche Vermögensberatung AG", startYear: 2020, endYear: 2022, icon: "icon4"),
     Experience(jobTitle: "Work & Travel", companyName: "Italy", startYear: 2019, endYear: 2020, icon: "icon5"),
     Experience(jobTitle: "Partnership Relations Manager", companyName: "Commerzbank AG", startYear: 2017, endYear: 2019, icon: "icon6")]
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text("Education")
                    .font(.headline)
                    .padding(.leading, 16)
                
                Rectangle()
                    .frame(maxWidth: 350, maxHeight: 1)
                    .foregroundColor(.gray)
                    .cornerRadius(5)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        
                        // erster Eintrag
                        HStack(alignment: .top) {
                            Image("logo1")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(jobs[0].jobTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(jobs[0].companyName)
                                    .font(.footnote)
                                Text(String("\(jobs[0].startYear) - \(jobs[0].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8) // Abstand Text zu Logos
                        }
                        Divider()
                        
                        // zweiter Eintrag
                        HStack(alignment: .top) {
                            Image("logo2")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(jobs[1].jobTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(jobs[1].companyName)
                                    .font(.footnote)
                                Text(String("\(jobs[1].startYear) - \(jobs[1].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8)
                        }
                        Divider()
                        
                        // dritter Eintrag
                        HStack(alignment: .top) {
                            Image("logo3")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(jobs[2].jobTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(jobs[2].companyName)
                                    .font(.footnote)
                                Text(String("\(jobs[2].startYear) - \(jobs[2].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8)
                        }
                        Divider()
                        
                        // vierter Eintrag
                        HStack(alignment: .top) {
                            Image("logo4")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(jobs[3].jobTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(jobs[3].companyName)
                                    .font(.footnote)
                                Text(String("\(jobs[3].startYear) - \(jobs[3].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8)
                        }
                        Divider()
                        
                        // fünfter Eintrag
                        HStack(alignment: .top) {
                            Image("logo5")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(jobs[4].jobTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(jobs[4].companyName)
                                    .font(.footnote)
                                Text(String("\(jobs[4].startYear) - \(jobs[4].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8)
                        }
                        Divider()
                        
                        // sechster Eintrag
                        HStack(alignment: .top) {
                            Image("logo6")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(jobs[5].jobTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(jobs[5].companyName)
                                    .font(.footnote)
                                Text(String("\(jobs[5].startYear) - \(jobs[5].endYear)"))
                                    .font(.footnote)
                            }
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
