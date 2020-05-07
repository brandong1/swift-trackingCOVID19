//
//  ListHeaderView.swift
//  TrackingCOVID19
//
//  Created by Brandon Green on 5/7/20.
//  Copyright © 2020 Brandon Lee Green. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    
    
    
    var body: some View {
        
        //horizontal stack
        HStack {
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 110, alignment: .leading)
                .padding(.leading, 15)
            
            Spacer()
            
            Text("Confirmed")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text("Deaths")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text("Recovered")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.trailing, 15)
        }
        .background(Color.gray)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
