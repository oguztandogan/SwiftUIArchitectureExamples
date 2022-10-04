//
//  MainPageEntity.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

struct Food: Identifiable, Decodable {
    var id: Int
    var uid: String
    var dish: String
    var description: String
    var ingredient: String
    var measurement: String

    static let mockFood = Food(id: 1, uid: "1234", dish: "Mock Food", description: "Great Food", ingredient: "Lots of stuff", measurement: "A lot")
}

