//
//  BarChartView.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/9/22.
//

import SwiftUI
import Charts

struct BarChartView: View {
    var data: [Vehicles] = [
        .init(type: "Jeep", count: 5, style: .red),
        .init(type: "BMW", count: 3, style: .yellow),
        .init(type: "Benz", count: 4, style: .blue),
        .init(type: "Lincoln", count: 2, style: .green)
    ]

    var body: some View {
        Chart(data) {
            BarMark(
                x: .value("Car Type", $0.type),
                y: .value("Total Count", $0.count)
            )
            .foregroundStyle($0.style)
        }
    }
    
}

struct BarChartView_Preview: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}

struct Vehicles: Identifiable {
    var type: String
    var count: Double
    var style: Color
    var id = UUID()
}
