//
//  NetworkManager.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import Foundation

protocol NetworkManagerProtocol {
    func getRandomFood() async throws -> Food
}

struct NetworkManager: NetworkManagerProtocol {
    
    func getRandomFood() async throws -> Food {
        guard let url = URL(string: "https://random-data-api.com/api/food/random_food") else { fatalError("Missing URL") }
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        let decodedFood = try JSONDecoder().decode(Food.self, from: data)
        return decodedFood
    }
    
}
