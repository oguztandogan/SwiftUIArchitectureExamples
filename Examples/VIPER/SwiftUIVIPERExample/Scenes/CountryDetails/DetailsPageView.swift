//
//  DetailsPageView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation
import SwiftUI

struct DetailsPageView: View {
    
    @ObservedObject var presenter: Presenter
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(presenter.food.description)
        }
        .padding()
        .navigationBarTitle("Food Details", displayMode: .inline)
    }
}

struct DetailsPageView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = DetailsPageView.Presenter(food: Food.mockFood)
        return Group {
            NavigationView {
                DetailsPageView(presenter: presenter)
            }
        }
    }
}
