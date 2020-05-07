//
//  Extension.swift
//  TrackingCOVID19
//
//  Created by Brandon Green on 5/7/20.
//  Copyright © 2020 Brandon Lee Green. All rights reserved.
//

import Foundation

extension Int {
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        
        return formatter.string(from: NSNumber(value: self))!
    }
}


extension Int64 {
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        
        return formatter.string(from: NSNumber(value: self))!
    }
}
