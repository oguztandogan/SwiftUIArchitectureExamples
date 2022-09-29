//
//  DetailsPageView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 28.09.2022.
//

import Foundation
import SwiftUI

struct DetailsPageView: View {
    
    @ObservedObject var presenter: DetailsPagePresenter
    
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
        let presenter = DetailsPagePresenter(params: mockFood.description)
        let list = DetailsPageView(presenter: presenter)
        return Group {
            NavigationView {
                list
            }
        }
    }
}
