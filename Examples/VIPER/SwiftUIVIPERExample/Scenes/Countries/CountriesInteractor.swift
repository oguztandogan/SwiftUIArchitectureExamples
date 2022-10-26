//
//  MainPageInteractor.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation

@MainActor class CountriesInteractor: ObservableObject {
    
    private let networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    /// Retrieve data from Network Manager
    func getCountries() async -> Food {
        do {
            return try await networkManager.ge()
        }
        catch {
            return Food.mockFood
        }
    }
}

