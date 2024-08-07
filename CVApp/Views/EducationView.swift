//
//  EducationView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct EducationView: View {
    let job: [Experience] =
    [Experience(jobTitle: "Student", companyName: "Syntax Institut", startYear: 2024, endYear: 2025, icon: "logo1"),
     Experience(jobTitle: "Mobile Consultant", companyName: "Deutsche Telekom AG", startYear: 2023, endYear: 2024, icon: "logo2"),
     Experience(jobTitle: "Sales Manager Assistant", companyName: "o2 Germany", startYear: 2022, endYear: 2023, icon: "logo3"),
     Experience(jobTitle: "Agency Manager", companyName: "DVAG", startYear: 2020, endYear: 2022, icon: "icon4"),
    Experience(jobTitle: "Work & Travel", companyName: "Italy", startYear: 2019, endYear: 202, icon: "icon5"),
    Experience(jobTitle: "Partnership Relations Manager", companyName: "Commerzbank AG", startYear: 2017, endYear: 2019, icon: "icon6")]
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 350)
                .cornerRadius(15)
                .foregroundStyle(.gray.opacity(0.2))
            VStack {
                Text("Education")
                Rectangle() //divider
                    .frame(maxWidth: 320, maxHeight: 2)
                    .cornerRadius(5)
                
                // erster Eintrag
                HStack {
                    Image("logo1")
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(Circle())
                    Text(job[0].jobTitle)
                        .font(.footnote)
                    Text(job[0].companyName)
                        .font(.footnote)
                    Text(String(job[0].startYear))
                        .font(.footnote)
                    Text(String(job[0].endYear))
                        .font(.footnote)
                }
                Rectangle() //divider
                    .frame(maxWidth: 320, maxHeight: 2)
                    .cornerRadius(5)
                
                // zweiter Eintrag
                HStack {
                    Image("logo2")
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(Circle())
                    Text(job[1].jobTitle)
                        .font(.footnote)
                    Text(job[1].companyName)
                        .font(.footnote)
                    Text(String(job[1].startYear))
                        .font(.footnote)
                    Text(String(job[1].endYear))
                        .font(.footnote)
                }
                Rectangle()
                    .frame(maxWidth: 320, maxHeight: 2)
                    .cornerRadius(5)
                
                // dritter Eintrag
                HStack {
                    Image("logo3")
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(Circle())
                    Text(job[2].jobTitle)
                        .font(.footnote)
                    Text(job[2].companyName)
                        .font(.footnote)
                    Text(String(job[2].startYear))
                        .font(.footnote)
                    Text(String(job[2].endYear))
                        .font(.footnote)
                }
                Rectangle()
                    .frame(maxWidth: 320, maxHeight: 2)
                    .cornerRadius(5)
                
                // vierter Eintrag
                HStack {
                    Image("logo4")
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(Circle())
                    Text(job[3].jobTitle)
                        .font(.footnote)
                    Text(job[3].companyName)
                        .font(.footnote)
                    Text(String(job[3].startYear))
                        .font(.footnote)
                    Text(String(job[3].endYear))
                        .font(.footnote)
                }
                Rectangle()
                    .frame(maxWidth: 320, maxHeight: 2)
                    .cornerRadius(5)
                
                // fünfter Eintrag
                HStack {
                    Image("logo5")
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(Circle())
                    Text(job[4].jobTitle)
                        .font(.footnote)
                    Text(job[4].companyName)
                        .font(.footnote)
                    Text(String(job[4].startYear))
                        .font(.footnote)
                    Text(String(job[4].endYear))
                        .font(.footnote)
                }
                Rectangle()
                    .frame(maxWidth: 320, maxHeight: 2)
                    .cornerRadius(5)
                
                // sechster Eintrag
                HStack {
                    Image("logo6")
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(Circle())
                    Text(job[5].jobTitle)
                        .font(.footnote)
                    Text(job[5].companyName)
                        .font(.footnote)
                    Text(String(job[5].startYear))
                        .font(.footnote)
                    Text(String(job[5].endYear))
                        .font(.footnote)
                }
                Rectangle()
                    .frame(maxWidth: 320, maxHeight: 2)
                    .cornerRadius(5)
            }
        }
    }
}

#Preview {
    EducationView()
}
