//
//  MainPageView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import SwiftUI

struct MainPageView: View {
    
    @ObservedObject var presenter: MainPagePresenter
    @State private var selection: String? = nil

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Foods: ")
                
                presenter.linkBuilder(food: presenter.foodData?.dish ?? "Loading") {
                    Text(presenter.foodData?.dish ?? "Loading")
                    
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
        let presenter = MainPagePresenter()
        let list = MainPageView(presenter: presenter)
        return Group {
            NavigationView {
                list
            }
        }
    }
}
