//
//  StackedBarChartView.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/14/22.
//

import SwiftUI
import Charts

struct StackedBarChartView: View {
    var data: [GroupedVehicles] = [
        .init(type: "Jeep", count: 5, style: "Red"),
        .init(type: "BMW", count: 3, style: "Yellow"),
        .init(type: "Benz", count: 4, style: "Blue"),
        .init(type: "Lincoln", count: 2, style: "Green"),
        .init(type: "Jeep", count: 2, style: "Yellow"),
        .init(type: "BMW", count: 6, style: "Blue"),
        .init(type: "Benz", count: 1, style: "Green"),
        .init(type: "Lincoln", count: 2, style: "Red"),
        .init(type: "Jeep", count: 3, style: "Blue"),
        .init(type: "BMW", count: 7, style: "Green"),
        .init(type: "Benz", count: 3, style: "Red"),
        .init(type: "Lincoln", count: 1, style: "Yellow"),
        .init(type: "Jeep", count: 6, style: "Green"),
        .init(type: "BMW", count: 2, style: "Red"),
        .init(type: "Benz", count: 3, style: "Yellow"),
        .init(type: "Lincoln", count: 1, style: "Blue")
    ]

    var body: some View {
        Chart(data) {
            BarMark(
                x: .value("Car Type", $0.type),
                y: .value("Total Count", $0.count)
            )
            .foregroundStyle(by: .value("Shape Color", $0.style))
        }
        .chartForegroundStyleScale([
            "Red": .red, "Yellow": .yellow, "Blue": .blue, "Green": .green
        ])
    }
    
}

struct StackedBarChartView_Preview: PreviewProvider {
    static var previews: some View {
        StackedBarChartView()
    }
}

struct GroupedVehicles: Identifiable {
    var type: String
    var count: Double
    var style: String
    var id = UUID()
}
