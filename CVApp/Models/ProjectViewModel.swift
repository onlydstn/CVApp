//
//  ProjectViewModel.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 20.08.24.
//

import Foundation
import Combine

class ProjectViewModel: ObservableObject {
    @Published var selectedProject: ProjectCareer?
    @Published var sheetShown: Bool = false
}
