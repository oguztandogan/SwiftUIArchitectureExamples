//
//  FoodUsecase.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation
import Combine

protocol FoodUseCaseInterface {
    func execute() -> AnyPublisher<Food, Error>
}

final class FoodUseCase: FoodUseCaseInterface {
    private let foodRepository: FoodRepository
    
    init(foodRepository: FoodRepository) {
        self.foodRepository = foodRepository
    }
    
    func execute() -> AnyPublisher<Food, Error> {
        return foodRepository.getFoodData()
    }
}
