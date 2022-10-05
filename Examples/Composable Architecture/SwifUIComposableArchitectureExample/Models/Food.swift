//
//  Food.swift
//  SwifUIComposableArchitectureExample
//
//  Created by Oguz Tandogan on 4.10.2022.
//

import Foundation

struct Food: Identifiable, Decodable, Equatable {
    var id: Int
    var uid: String
    var dish: String
    var description: String
    var ingredient: String
    var measurement: String
}
