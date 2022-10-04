//
//  MainPageRouter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

extension MainPageView {
    class Router {
        func makeDetailsView(food: Food) -> some View {
            let presenter = DetailsPageView.Presenter(food: food)
            let detailView = DetailsPageView(presenter: presenter)
            return detailView
        }
    }
}

struct FrogsListRouter_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView.Router().makeDetailsView(food: Food.mockFood)
    }
}
