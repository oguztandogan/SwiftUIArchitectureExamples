//
//  DetailsPagePresenter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation

extension DetailsPageView {
    final class Presenter: ObservableObject {
        
        @Published var food: Food
        
        init(food: Food) {
            self.food = food
        }
    }
}
