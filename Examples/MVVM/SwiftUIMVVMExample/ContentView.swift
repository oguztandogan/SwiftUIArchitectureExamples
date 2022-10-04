//
//  ContentView.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainPageView(viewModel: MainPageView.ViewModel(networkManager: NetworkManager()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView(viewModel: MainPageView.ViewModel(networkManager: NetworkManager()))
    }
}
