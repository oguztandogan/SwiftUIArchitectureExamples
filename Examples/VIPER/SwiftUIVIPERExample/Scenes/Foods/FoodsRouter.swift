//
//  MainPageRouter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

final class FoodsRouter {
    func makeDetailsView(food: String) -> some View {
        let presenter = FoodDetailsPresenter(params: mockFood.description)
        let detailView = FoodDetailsView(presenter: presenter)
        return detailView
    }
}

struct FrogsListRouter_Previews: PreviewProvider {
    static var previews: some View {
        FoodsRouter().makeDetailsView(food: mockFood.description)
    }
}
