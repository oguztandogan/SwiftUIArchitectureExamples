//
//  MainPageRouter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

class CountriesRouter {
    func makeDetailsView(food: Food) -> some View {
        let presenter = CountriesPresenter(food: food)
        let detailView = DetailsPageView(presenter: presenter)
        return detailView
    }
}


struct FrogsListRouter_Previews: PreviewProvider {
    static var previews: some View {
        CountriesRouter().makeDetailsView(food: Food.mockFood)
    }
}
