//
//  MainPageViewModel.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation
import Combine

class MainPageViewModel: ObservableObject {
    
    // SOURCE OF TRUTH
    @Published var foodData: Food?
    private var bag: AnyCancellable?
    private let foodUsecase: FoodUseCase
        
    init(foodUsecase: FoodUseCase) {
        self.foodUsecase = foodUsecase
        fetchFoodData()
    }
    
    deinit {
        bag?.cancel()
    }
    
    func fetchFoodData() {
        bag = foodUsecase.execute().sink { status in
            print(status)
        } receiveValue: { [weak self] food in
            self?.foodData = food
        }
    }
    
}
