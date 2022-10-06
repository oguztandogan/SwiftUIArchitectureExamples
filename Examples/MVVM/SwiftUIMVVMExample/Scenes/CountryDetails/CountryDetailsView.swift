//
//  CountryDetails.swift
//  MVVM
//
//  Created by Oguz Tandogan on 5.10.2022.
//

import Foundation
import SwiftUI

struct CountryDetailsView: View {
    
    @ObservedObject var viewModel: CountryDetailsViewModel
    
    var body: some View {
        
            VStack(alignment: .leading) {
                if let errorText = viewModel.errorText {
                    Text(errorText).foregroundColor(.red)
                }
                List {
                    Text(viewModel.countryDetails?.countryName ?? "")
                    Text(viewModel.countryDetails?.key ?? "")
                }.navigationTitle("Country Details")
                
            }
    }
}
