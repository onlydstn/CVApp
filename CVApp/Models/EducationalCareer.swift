//
//  EducationalCareer.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 11.08.24.
//

import Foundation

struct EducationalCareer: Identifiable {
    var id: UUID = UUID()
    
    var educationTitle: String
    var companyName: String
    var startYear: Int
    var endYear: Int
    var icon: String
}
