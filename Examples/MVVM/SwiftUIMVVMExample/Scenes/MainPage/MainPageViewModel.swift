//
//  MainPageViewModel.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import Foundation

@MainActor class MainPageViewModel: ObservableObject {
    
    // SOURCE OF TRUTH
    @Published var foodData: Food?
    @Published private(set) var errorText: String?
        
    private let networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    
    /// Retrieve data from Network Manager
    func fetchFoodData() async {
        Task {
            do {
                foodData = try await networkManager.getRandomFood()
            } catch {
                errorText = error.localizedDescription
            }
        }
        
    }
    

}
