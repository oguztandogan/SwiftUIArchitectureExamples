//
//  ContentView.swift
//  SwiftUICleanArchitectureExample
//
//  Created by Oguz Tandogan on 29.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AppDI.shared.getMainPageView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
