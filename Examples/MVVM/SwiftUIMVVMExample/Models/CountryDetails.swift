//
//  CountryDetails.swift
//  MVVM
//
//  Created by Oguz Tandogan on 5.10.2022.
//

import Foundation

struct CountryDetails: Codable, Hashable {
    let countryName: String?
    let key: String?

    enum CodingKeys: String, CodingKey {
        case countryName = "value"
        case key
    }
}
