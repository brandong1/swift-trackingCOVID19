//
//  RecentView.swift
//  TrackingCOVID19
//
//  Created by Brandon Green on 5/7/20.
//  Copyright © 2020 Brandon Lee Green. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        Text("Country")
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
