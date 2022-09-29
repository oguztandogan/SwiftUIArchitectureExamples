//
//  NetworkManager.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation
import Combine

protocol NetworkManagerProtocol {
    func getRandomFood() -> AnyPublisher<Food, Error>
    
}

struct NetworkManager: NetworkManagerProtocol {
    
    /// Fetchs data from Rest API
    /// - Returns: Data
    func getRandomFood() -> AnyPublisher<Food, Error> {
        guard let url = URL(string: "https://random-data-api.com/api/food/random_food") else { fatalError("Missing URL") }
        
        //        return URLSession.shared.dataTaskPublisher(for: url)
        //            .decode(type: Food.self, decoder: JSONDecoder())
        //            .replaceError(with: [])
        //            .receive(on: DispatchQueue.main)
        //            .eraseToAnyPublisher()
        
        return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }
            .decode(type: Food.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
}
