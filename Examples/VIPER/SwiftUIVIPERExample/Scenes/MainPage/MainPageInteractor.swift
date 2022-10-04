//
//  MainPageInteractor.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation

extension MainPageView {
    @MainActor class Interactor: ObservableObject {
        
        private let networkManager: NetworkManagerProtocol
        
        init(networkManager: NetworkManagerProtocol) {
            self.networkManager = networkManager
        }
        
        /// Retrieve data from Network Manager
        func fetchFoodData() async -> Food {
            do {
                return try await networkManager.getRandomFood()
            }
            catch {
                return Food.mockFood
            }
        }
    }
}
