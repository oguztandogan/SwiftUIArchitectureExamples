//
//  MainPageView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

struct MainPageView: View {
    
    @ObservedObject var presenter: Presenter

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
        let presenter = MainPageView.Presenter(
            router: MainPageView.Router(),
            interactor: MainPageView.Interactor(networkManager: NetworkManager())
        )
        return Group {
            NavigationView {
                MainPageView(presenter: presenter)
            }
        }
    }
}
