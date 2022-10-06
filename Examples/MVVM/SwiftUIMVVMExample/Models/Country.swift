//
//  MainPageModel.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import Foundation

struct Country: Codable, Hashable {
    let continentCode: ContinentCode?
    let isoA3, countryName: String?
    let currencyCode: String?
    let key: String?
    let currencyNumCode: String?

    enum CodingKeys: String, CodingKey {
        case continentCode = "continent_code"
        case isoA3 = "iso_a3"
        case countryName = "value"
        case currencyCode = "currency_code"
        case key
        case currencyNumCode = "currency_num_code"
    }
}

enum ContinentCode: String, Codable {
    case af = "AF"
    case continentCodeAS = "AS"
    case eu = "EU"
    case na = "NA"
    case oc = "OC"
    case sa = "SA"
}
