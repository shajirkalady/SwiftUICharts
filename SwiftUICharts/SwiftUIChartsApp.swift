//
//  SwiftUIChartsApp.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/9/22.
//

import SwiftUI

@main
struct SwiftUIChartsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

var chartListItems: [ChartItem] = [ .init(name: "Simple Bar Chart", type: .bar, info: "Bar chart using SwiftUI"),
                                    .init(name: "Simple Line Chart", type: .line, info: "Line chart using SwiftUI"),
                                    .init(name: "Simple Point Chart", type: .point, info: "Point chart using SwiftUI")]
            
struct ChartItem: Identifiable {
    var name: String
    var type: ChartType
    var info: String
    var id = UUID()
}

enum ChartType {
    case bar
    case line
    case point
}

// UINavigationController extension for removing back button title of the previous screen
extension UINavigationController {
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
