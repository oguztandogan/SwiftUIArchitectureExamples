//
//  DetailsPageView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation
import SwiftUI

struct FoodDetailsView: View {
    
    @ObservedObject var presenter: FoodDetailsPresenter
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Food Details: ")
            
            Text(presenter.food)

        }
        .navigationBarTitle("Food Details", displayMode: .inline)
    }
}

struct DetailsPageView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = FoodDetailsPresenter(params: mockFood.description)
        let list = FoodDetailsView(presenter: presenter)
        return Group {
            NavigationView {
                list
            }
        }
    }
}
