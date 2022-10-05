//
//  MainView.swift
//  SwifUIComposableArchitectureExample
//
//  Created by Oguz Tandogan on 4.10.2022.
//

import ComposableArchitecture
import SwiftUI

struct FoodView: View {
    var store: Store<FoodsState, FoodsAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack(alignment: .leading) {
                Text("Foods: ")
                
                Text(viewStore.food?.description ?? "")
            }.onAppear {
                viewStore.send(.onAppear)
            }
        }
    }
}
