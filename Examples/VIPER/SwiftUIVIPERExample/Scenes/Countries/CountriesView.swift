//
//  MainPageView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

struct CountriesView: View {
    
    @ObservedObject var presenter: CountriesPresenter

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                presenter.linkBuilder(food: presenter.foodData) {
                    Text(presenter.foodData!.dish)
                }
            }
            .onAppear{
                Task {
                    await presenter.retrieveData()
                }
            }
            .navigationBarTitle("Foods", displayMode: .inline)
        }
    }
}

struct FrogsListView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = CountriesPresenter(
            router: CountriesRouter(),
            interactor: CountriesInteractor(networkManager: NetworkManager())
        )
        return Group {
            NavigationView {
                MainPageView(presenter: presenter)
            }
        }
    }
}
