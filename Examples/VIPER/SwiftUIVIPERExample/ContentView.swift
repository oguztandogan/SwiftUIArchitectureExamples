//
//  ContentView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 27.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FoodsView(presenter: FoodsPresenter())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodsView(presenter: FoodsPresenter())
    }
}
