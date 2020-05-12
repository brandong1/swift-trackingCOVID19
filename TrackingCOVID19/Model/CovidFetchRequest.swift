//
//  CovidFetchRequest.swift
//  TrackingCOVID19
//
//  Created by Brandon Green on 5/5/20.
//  Copyright © 2020 Brandon Lee Green. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest: ObservableObject {
    
    @Published var allCountries: [CountryData] = []
    @Published var totalData: TotalData =  testTotalData
    
    let headers: HTTPHeaders = [
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
        "x-rapidapi-key": 
    ]
    
    init() {
        getCurrentTotal()
        getAllCountries()    }
    
    func getCurrentTotal() {

        AF.request("https://covid-19-data.p.rapidapi.com/totals?format=json", headers: headers).responseJSON { response in
            
            let result = response.data
            
            if result != nil {
                let json = JSON(result!)
//                print(json)
                
                let recovered = json[0]["recovered"].intValue
                let deaths = json[0]["deaths"].intValue
                let confirmed = json[0]["confirmed"].intValue
                let critical = json[0]["critical"].intValue
                
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
            } else {
                self.totalData = testTotalData
            }
        }
    }
    
    func getAllCountries() {
    
        AF.request("https://covid-19-data.p.rapidapi.com/country/all?format=json", headers: headers).responseJSON { response in
                    
            let result = response.value
            
            var allCountries: [CountryData] = []
            
            if result != nil {
                let dataDictionary = result as! [Dictionary<String, AnyObject>]
                
                for countryData in dataDictionary {
                    // Setting pulling the key ("country for example") from countryData dictionary (array), setting type as string and default value (??) "Error"
                    let country = countryData["country"] as? String ?? "Error"
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    
                    let recovered = countryData["recovered"] as? Int64 ?? 0
                    let deaths = countryData["deaths"] as? Int64 ?? 0
                    let confirmed = countryData["confirmed"] as? Int64 ?? 0
                    let critical = countryData["critical"] as? Int64 ?? 0
                    
                    let countryObject = CountryData(country: country, confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered, longitude: longitude, latitude: latitude)
                    
                    allCountries.append(countryObject)
                }
            }
            // this sorts the data to bring the most confirmed cases to the top
            self.allCountries = allCountries.sorted(by: {$0.confirmed > $1.confirmed})
        
        }
    }
}
