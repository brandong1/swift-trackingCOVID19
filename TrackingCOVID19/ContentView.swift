//
//  ContentView.swift
//  TrackingCOVID19
//
//  Created by Brandon Green on 5/5/20.
//  Copyright © 2020 Brandon Lee Green. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        
        TabView {
            RecentView()
                .tabItem{
                    Tab(imageName: "chart.bar", text: "Recent") //image from Apple
            }
        .tag(0)
            
        //map
            
        }
    }
}

private struct Tab: View {
    let imageName: String
    let text: String
    
    var body: some View{
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}
