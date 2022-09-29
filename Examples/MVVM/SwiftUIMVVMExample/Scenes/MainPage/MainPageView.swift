//
//  MainPageView.swift
//  SwiftUIMVVMExample
//
//  Created by Oguz Tandogan on 26.09.2022.
//

import Foundation
import SwiftUI

struct MainPageView: View {
    
    @ObservedObject var viewModel: MainPageViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Foods: ")
            
            Text(viewModel.foodData?.dish ?? "Loading")
            

            if let errorText = viewModel.errorText {
                Text(errorText).foregroundColor(.red)
            }
        }.onAppear {
            Task {
                await viewModel.fetchFoodData()
            }
        }
    }
}
