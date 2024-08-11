//
//  TabView.swift
//  CVApp
//
//  Created by Dustin Nuzzo on 11.08.24.
//

import SwiftUI

struct HeaderViews: View {
    
    var body: some View {
        
        TabView {
            HeaderView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HeaderView2()
                .tabItem {
                    Image(systemName: "graduationcap")
                    Text("Education")
                }
        }
    }
}

#Preview {
    HeaderViews()
}
