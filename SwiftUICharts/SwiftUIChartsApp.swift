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
                                    .init(name: "Simple Point Chart", type: .point, info: "Point chart using SwiftUI"),
                                    .init(name: "Simple Area Chart", type: .area, info: "Area chart using SwiftUI"),
                                    .init(name: "Rectangle Chart", type: .rectangle, info: "Rectangle chart using SwiftUI"),
                                    .init(name: "Stacked Bar Chart", type: .stackedBar, info: "Stacked Bar chart using SwiftUI"),
                                    .init(name: "Multiple Line Chart", type: .multiLine, info: "Multiple line chart using SwiftUI"),
                                    .init(name: "Line & Point Chart Combo", type: .linePoint, info: "Combination of line chart and point chart using SwiftUI")]
            
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
    case area
    case rectangle
    case stackedBar
    case multiLine
    case linePoint
}

// UINavigationController extension for removing back button title of the previous screen
extension UINavigationController {
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
