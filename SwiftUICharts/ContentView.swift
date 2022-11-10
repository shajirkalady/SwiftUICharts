//
//  ContentView.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MasterView(items: chartListItems)
            ChartDetailView(item: chartListItems[0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
