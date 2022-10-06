//
//  NetworkManager.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import Foundation

protocol NetworkManagerProtocol {
    func fetchCountries() async throws -> [Country]
    func fetchCountryDetails(countryCode: String) async throws -> CountryDetails
}

struct NetworkManager: NetworkManagerProtocol {
    
    /// Fetchs data from Rest API
    /// - Returns: Data
    func fetchCountries() async throws -> [Country] {
        guard let url = URL(string: "https://referential.p.rapidapi.com/v1/country")
        else { fatalError("Missing URL") }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("27a18251a7mshdfab032d83e05e6p1bbb16jsnec93847642a3", forHTTPHeaderField: "X-RapidAPI-Key")
        urlRequest.setValue("referential.p.rapidapi.com", forHTTPHeaderField: "X-RapidAPI-Host")
        urlRequest.setValue("currency,currency_num_code,currency_code,continent_code,currency,iso_a3,dial_code", forHTTPHeaderField: "fields")
        urlRequest.setValue("10", forHTTPHeaderField: "limit")

        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else { fatalError("Error while fetching data") }
        let decodedFood = try JSONDecoder().decode([Country].self, from: data)
        return decodedFood
    }
    
    func fetchCountryDetails(countryCode: String) async throws -> CountryDetails {
        var urlComponents = URLComponents(string: "https://referential.p.rapidapi.com")
        urlComponents?.path = "/v1/country/" + countryCode
        guard let url = urlComponents?.url
        else { fatalError("Missing URL")}
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("27a18251a7mshdfab032d83e05e6p1bbb16jsnec93847642a3", forHTTPHeaderField: "X-RapidAPI-Key")
        urlRequest.setValue("referential.p.rapidapi.com", forHTTPHeaderField: "X-RapidAPI-Host")
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else { fatalError("Error while fetching data") }
        let decodedFood = try JSONDecoder().decode(CountryDetails.self, from: data)
        print(decodedFood)
        return decodedFood
    }
    
}
