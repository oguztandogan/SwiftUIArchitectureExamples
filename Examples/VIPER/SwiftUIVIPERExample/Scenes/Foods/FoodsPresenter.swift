//
//  MainPagePresenter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation
import SwiftUI


@MainActor class FoodsPresenter: ObservableObject {
    
    private let router = FoodsRouter()
    private let interactor = FoodsInteractor(networkManager: NetworkManager())
    @Published var foodData: Food?
        
    func retrieveData() async {
        foodData = await interactor.fetchFoodData()
    }
    
    func linkBuilder<Content: View>(food: String, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: router.makeDetailsView(food: mockFood.description)) {
            content()
        }
    }

    
}
