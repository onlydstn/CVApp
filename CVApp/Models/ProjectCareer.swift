//
//  ProjectCareer.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 19.08.24.
//

import Foundation

struct ProjectCareer: Identifiable {
    var id: UUID = UUID()
    
    var projectTitle: String
    var projectDescription: String
    var startYear: Int
    var endYear: Int
    var icon: String
}
