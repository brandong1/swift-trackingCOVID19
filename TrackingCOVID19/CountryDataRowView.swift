//
//  CountryDataRowView.swift
//  TrackingCOVID19
//
//  Created by Brandon Green on 5/7/20.
//  Copyright © 2020 Brandon Lee Green. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    
    var body: some View {
        
        HStack {
            Text(countryData.country)
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 110, alignment: .leading)
                .padding(.leading, 15)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.deaths.formatNumber())
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.recovered.formatNumber())
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.trailing, 15)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
