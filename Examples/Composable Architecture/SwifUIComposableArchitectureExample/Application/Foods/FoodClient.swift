//
//  FoodClient.swift
//  SwifUIComposableArchitectureExample
//
//  Created by Oguz Tandogan on 4.10.2022.
//

import Foundation
import Combine

struct FoodClient {
    var food: @Sendable () async throws -> Food
}

// MARK: - Live API implementation

extension FoodClient {
  static let live = FoodClient(
    food: {
        guard let url = URL(string: "https://random-data-api.com/api/food/random_food") else { fatalError("Missing URL") }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(Food.self, from: data)
    }
  )
}
