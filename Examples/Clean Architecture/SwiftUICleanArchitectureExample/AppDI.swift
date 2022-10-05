//
//  AppDI.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation

class AppDI {
    static let shared = AppDI()
    
    func getFoodsView() -> FoodsView {
        let repository = FoodRepository(networkManager: NetworkManager())
        let useCase = FoodUseCase(foodRepository: repository)
        let viewModel = FoodsViewModel(foodUsecase: useCase)
        return FoodsView(viewModel: viewModel)
    }

}
