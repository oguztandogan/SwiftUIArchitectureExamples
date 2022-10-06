//
//  MainPageView.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import Foundation
import SwiftUI

struct CountriesView: View {
    
    @ObservedObject var viewModel: CountriesViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            if let errorText = viewModel.errorText {
                Text(errorText).foregroundColor(.red)
            }
            NavigationStack {
                List(viewModel.countries, id: \.self) { country in
                    NavigationLink(country.countryName ?? "", value: country)
                        
                }
                .navigationDestination(for: Country.self) { country in
                    CountryDetailsView(viewModel: CountryDetailsViewModel(networkManager: NetworkManager(),
                                                                          countryCode: country.key ?? ""))
                }
                .navigationTitle("Countries")
            }
        }.onAppear {
            Task {
                await viewModel.getCountries()
            }
        }
    }
}
