//
//  AppDI.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation

class AppDI {
    static let shared = AppDI()
    
    func getMainPageView() -> MainPageView {
        let repository = FoodRepository(networkManager: NetworkManager())
        let useCase = FoodUseCase(foodRepository: repository)
        let viewModel = MainPageViewModel(foodUsecase: useCase)
        return MainPageView(viewModel: viewModel)
    }

}
