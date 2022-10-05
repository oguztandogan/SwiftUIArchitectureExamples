//
//  MainPageView.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import Foundation
import SwiftUI

struct FoodsView: View {
    
    @ObservedObject var viewModel: FoodsViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Foods: ")
            
            Text(viewModel.foodData?.dish ?? "Loading")
            

            
        }
    }
}
