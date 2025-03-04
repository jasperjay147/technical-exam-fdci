//
//  Country.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import Foundation

struct Country: Decodable {
    let region: String
    let name: CountryName
    let capital: [String]?
}
