//
//  MainPagePresenter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation
import SwiftUI


@MainActor class MainPagePresenter: ObservableObject {
    
    private let router = MainPageRouter()
    private let interactor = MainPageInteractor(networkManager: NetworkManager())
    @Published var foodData: Food?
    @Published var willNavigateToDetails: Bool = false
    
    @Published var isShowAbout = false
    
    func retrieveData() async {
        foodData = await interactor.fetchFoodData()
        
    }
    
    func linkBuilder<Content: View>(food: String, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: router.makeDetailsView(food: mockFood.description)) {
            content()
        }
    }

    
}
