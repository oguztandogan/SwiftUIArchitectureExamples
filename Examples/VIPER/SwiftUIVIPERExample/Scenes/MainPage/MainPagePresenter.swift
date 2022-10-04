//
//  MainPagePresenter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation
import SwiftUI

extension MainPageView {
    @MainActor class Presenter: ObservableObject {
        
        private let router: Router
        private let interactor: Interactor
        
        @Published var foodData: Food?
        
        init(router: Router, interactor: Interactor) {
            self.router = router
            self.interactor = interactor
        }
        
        func retrieveData() async {
            foodData = await interactor.fetchFoodData()
        }
        
        @ViewBuilder
        func linkBuilder<Content: View>(food: Food?, @ViewBuilder content: () -> Content) -> some View {
            if food == nil {
                Text("Loading...")
            }
            else {
                NavigationLink(destination: router.makeDetailsView(food: food!)) {
                    content()
                }
            }
        }
    }
}
