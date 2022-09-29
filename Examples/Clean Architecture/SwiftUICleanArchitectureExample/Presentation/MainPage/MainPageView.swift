//
//  MainPageView.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation
import SwiftUI

struct MainPageView: View {
    
    @ObservedObject var viewModel: MainPageViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Foods: ")
            
            Text(viewModel.foodData?.dish ?? "Loading")
            

            
        }
    }
}
