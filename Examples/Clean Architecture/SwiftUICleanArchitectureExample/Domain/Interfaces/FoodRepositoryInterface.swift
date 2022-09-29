//
//  FoodRepositoryInterface.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation
import Combine

protocol FoodRepositoryInterface {
    func getFoodData() -> AnyPublisher<Food, Error>
}
