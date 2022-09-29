//
//  MainPageRepository.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation
import Combine
import CoreData

class FoodRepository: FoodRepositoryInterface {
    
    private let networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    func getFoodData() -> AnyPublisher<Food, Error> {
        networkManager.getRandomFood()
    }
}

