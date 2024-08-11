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
     EducationalCareer(educationTitle: "Certificated Banking Consultant", companyName: "Commerzbank AG", startYear: 2020, endYear: 2022, icon: "icon6")]
    
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
                        HStack(alignment: .top) {
                            Image("logo1")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(educations[0].educationTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(educations[0].companyName)
                                    .font(.footnote)
                                Text(String("\(educations[0].startYear) - today"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8) // Abstand Text zu Logos
                        }
                        Divider()
                        
                        // zweiter Eintrag
                        HStack(alignment: .top) {
                            Image("logo7")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(educations[1].educationTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(educations[1].companyName)
                                    .font(.footnote)
                                Text(String("\(educations[1].startYear) - \(educations[1].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8) // Abstand Text zu Logos
                        }
                        Divider()
                        
                        // dritter Eintrag
                        HStack(alignment: .top) {
                            Image("logo8")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(educations[2].educationTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(educations[2].companyName)
                                    .font(.footnote)
                                Text(String("\(educations[2].startYear) - \(educations[2].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8)
                        }
                        Divider()
                        
                        // vierter Eintrag
                        HStack(alignment: .top) {
                            Image("logo8")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(educations[3].educationTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(educations[3].companyName)
                                    .font(.footnote)
                                Text(String("\(educations[3].startYear) - \(educations[3].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8)
                        }
                        Divider()
                        
                        //fünfter Eintrag
                        HStack(alignment: .top) {
                            Image("logo6")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(educations[4].educationTitle)
                                    .font(.footnote)
                                    .bold()
                                Text(educations[4].companyName)
                                    .font(.footnote)
                                Text(String("\(educations[4].startYear) - \(educations[4].endYear)"))
                                    .font(.footnote)
                            }
                            .padding(.leading, 8)
                        }
                        Divider()

                    }
                    .padding(.horizontal) // Padding für den Inhalt meiner EducationView
                }
            }
            .padding(.vertical) // Padding für Education-Text in der EducationView
        }
        .padding(5) // Padding für die EducationView
    }
}
