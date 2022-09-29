//
//  MainPageRouter.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

final class MainPageRouter {
    func makeDetailsView(food: String) -> some View {
        let presenter = DetailsPagePresenter(params: mockFood.description)
        let detailView = DetailsPageView(presenter: presenter)
        return detailView
    }
}

struct FrogsListRouter_Previews: PreviewProvider {
    static var previews: some View {
        MainPageRouter().makeDetailsView(food: mockFood.description)
    }
}
