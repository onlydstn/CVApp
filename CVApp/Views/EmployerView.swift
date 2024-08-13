//
//  EducationView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct EmployerView: View {
    let jobs: [JobCareer] =
    [JobCareer(jobTitle: "Student @ Syntax Institut", companyName: "Syntax Institut", startYear: 2024, endYear: 2025, icon: "logo1"),
     JobCareer(jobTitle: "Sales Consultant", companyName: "Deutsche Telekom AG", startYear: 2023, endYear: 2024, icon: "logo2"),
     JobCareer(jobTitle: "Sales Manager Assistant", companyName: "o2 Telefonice Germany", startYear: 2022, endYear: 2023, icon: "logo3"),
     JobCareer(jobTitle: "Selfemployed Agency Manager", companyName: "Deutsche Vermögensberatung AG", startYear: 2020, endYear: 2022, icon: "logo4"),
     JobCareer(jobTitle: "Work & Travel", companyName: "Italy", startYear: 2019, endYear: 2020, icon: "logo5"),
     JobCareer(jobTitle: "Partnership Relations Manager", companyName: "Commerzbank AG", startYear: 2017, endYear: 2019, icon: "logo6")]
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text("Employers")
                    .font(.system(size: 16))
                    .bold()
                    .padding(.leading, 16)
                
                Rectangle()
                    .frame(maxWidth: 350, maxHeight: 1)
                    .foregroundColor(.gray)
                    .cornerRadius(5)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        
                        // ScrollView Inhalt
                        ForEach(jobs) { job in
                            
                            HStack(alignment: .top) {
                                Image(job.icon)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(job.jobTitle)
                                        .font(.footnote)
                                        .bold()
                                    Text(job.companyName)
                                        .font(.footnote)
                                    Text(String("\(job.startYear) - \(job.endYear)"))
                                        .font(.footnote)
                                }
                                .padding(.leading, 8)
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
