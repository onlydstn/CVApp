//
//  EducationView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import SwiftUI

struct EducationView: View {
    let educations: [EducationalCareer] =
    [EducationalCareer(educationTitle: "Mobile Developer", companyName: "Syntax Institut", startYear: 2024, endYear: 2025, icon: "logo1"),
     EducationalCareer(educationTitle: "Certificate of Secondary Education", companyName: "Abendrealschule Paderborn", startYear: 2013, endYear: 2015, icon: "logo7"),
     EducationalCareer(educationTitle: "Certificated Pension Advisor", companyName: "Deutsche Versicherungsakademie", startYear: 2019, endYear: 2019, icon: "logo8"),
     EducationalCareer(educationTitle: "Certificated Servicecenter Consultant", companyName: "Deutsche Versicherungsakademie", startYear: 2019, endYear: 2019, icon: "logo8"),
     EducationalCareer(educationTitle: "Certificated Banking Consultant", companyName: "Commerzbank AG", startYear: 2020, endYear: 2022, icon: "logo6")]
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text("Education")
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
                        ForEach(educations) { education in
                            HStack(alignment: .top) {
                                Image(education.icon)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(education.educationTitle)
                                        .font(.footnote)
                                        .bold()
                                    Text(education.companyName)
                                        .font(.footnote)
                                    Text(String("\(education.startYear) - today"))
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
