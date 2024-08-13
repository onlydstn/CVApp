//
//  Experience.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 8/7/24.
//

import Foundation

struct JobCareer: Identifiable {
    var id: UUID = UUID()
    
    var jobTitle: String
    var companyName: String
    var startYear: Int
    var endYear: Int
    var icon: String
}
