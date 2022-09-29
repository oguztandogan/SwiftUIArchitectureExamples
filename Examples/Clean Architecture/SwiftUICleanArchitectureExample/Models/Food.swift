//
//  Food.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation

struct Food: Identifiable, Decodable {
    var id: Int
    var uid: String
    var dish: String
    var description: String
    var ingredient: String
    var measurement: String
}
