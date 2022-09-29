//
//  ContentView.swift
//  SwiftUIVIPERExample
//
//  Created by Oguz Tandogan on 27.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainPageView(presenter: MainPagePresenter())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView(presenter: MainPagePresenter())
    }
}
