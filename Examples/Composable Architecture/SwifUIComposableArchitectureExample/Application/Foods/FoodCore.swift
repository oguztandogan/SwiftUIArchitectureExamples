//
//  MainCore.swift
//  SwifUIComposableArchitectureExample
//
//  Created by Oguz Tandogan on 4.10.2022.
//

import ComposableArchitecture
import Combine
import Foundation

struct FoodsState: Equatable {
    var food: Food?
}

enum FoodsAction: Equatable {
    case onAppear
    case foodResponse(TaskResult<Food>)
    
}

struct FoodsEnvironment {
    var foodClient: FoodClient
    
}

// MARK: - Reducer

let foodsReducer = Reducer<FoodsState, FoodsAction, FoodsEnvironment> { state, action, environment in
    switch action {
        
    case .onAppear:
        return .task {
            await .foodResponse(TaskResult { try await environment.foodClient.food() })
          }
    case .foodResponse(.failure):
        state.food = nil
        return .none
    case let .foodResponse(.success(response)):
        state.food = response
        return .none
    }
}
