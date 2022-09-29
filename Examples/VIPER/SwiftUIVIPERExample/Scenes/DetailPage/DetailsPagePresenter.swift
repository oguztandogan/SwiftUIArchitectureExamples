//
//  DetailsPagePresenter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation

final class DetailsPagePresenter: ObservableObject {
    
    private let router = DetailsPageRouter()
    private let interactor = DetailsPageInteractor(networkManager: NetworkManager())
    @Published var food: String
    
    init(params: String) {
        self.food = params
    }

}
