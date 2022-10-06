//
//  ContentView.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CountriesView(viewModel: CountriesViewModel(networkManager: NetworkManager()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView(viewModel: CountriesViewModel(networkManager: NetworkManager()))
    }
}
