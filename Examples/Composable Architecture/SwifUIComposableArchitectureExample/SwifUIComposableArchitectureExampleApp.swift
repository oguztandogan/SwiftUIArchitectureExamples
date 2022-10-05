//
//  SwifUIComposableArchitectureExampleApp.swift
//  SwifUIComposableArchitectureExample
//
//  Created by Oguz Tandogan on 4.10.2022.
//

import SwiftUI
import ComposableArchitecture

@main
struct SwifUIComposableArchitectureExampleApp: App {
    var body: some Scene {
        WindowGroup {
            FoodView(store: Store(initialState: FoodsState(),
                                  reducer: foodsReducer.debug(),
                                  environment:FoodsEnvironment(foodClient: FoodClient.live) ))
        }
    }
}
