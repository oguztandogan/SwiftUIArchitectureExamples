//
//  DetailsPagePresenter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation

final class FoodDetailsPresenter: ObservableObject {
    
    private let interactor = FoodDetailsInteractor(networkManager: NetworkManager())
    @Published var food: String
    
    init(params: String) {
        self.food = params
    }

}
