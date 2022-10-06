//
//  CountryDetailsViewModel.swift
//  MVVM
//
//  Created by Oguz Tandogan on 5.10.2022.
//

import Foundation
@MainActor class CountryDetailsViewModel: ObservableObject {
    
    // SOURCE OF TRUTH
    @Published var countryDetails: CountryDetails?
    @Published private(set) var errorText: String?
    
    private let networkManager: NetworkManagerProtocol
    private let countryCode: String
    
    init(networkManager: NetworkManagerProtocol,
         countryCode: String) {
        self.networkManager = networkManager
        self.countryCode = countryCode
        Task {
            await getCountryDetails()
        }
    }
    
    /// Retrieve data from Network Manager
    func getCountryDetails() async {
        do {
            countryDetails = try await networkManager.fetchCountryDetails(countryCode: countryCode)
        } catch {
            errorText = error.localizedDescription
        }
    }
}
