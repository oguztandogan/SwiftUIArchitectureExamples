//
//  MainPageViewModel.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import Foundation

@MainActor class CountriesViewModel: ObservableObject {
    
    // SOURCE OF TRUTH
    @Published var countries = [Country]()
    @Published private(set) var errorText: String?
    
    private let networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    /// Retrieve data from Network Manager
    func getCountries() async {
        do {
            countries = try await networkManager.fetchCountries()
        } catch {
            errorText = error.localizedDescription
        }
    }
}
