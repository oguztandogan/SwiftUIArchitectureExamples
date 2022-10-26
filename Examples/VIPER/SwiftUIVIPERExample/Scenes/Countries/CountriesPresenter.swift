//
//  MainPagePresenter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation
import SwiftUI

@MainActor class CountriesPresenter: ObservableObject {
    
    private let router: CountriesRouter
    private let interactor: CountriesInteractor
    
    @Published var foodData: Food?
    
    init(router: CountriesRouter, interactor: CountriesInteractor) {
        self.router = router
        self.interactor = interactor
    }
    
    func retrieveData() async {
        foodData = await interactor.fetchFoodData()
    }
    
    @ViewBuilder
    func linkBuilder<Content: View>(country: Country?, @ViewBuilder content: () -> Content) -> some View {
        if country == nil {
            Text("Loading...")
        }
        else {
            NavigationLink(destination: router.makeCountryDetailsView(country: country!)) {
                content()
            }
        }
    }
}

