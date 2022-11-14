//
//  MultipleLineChart.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/14/22.
//

import SwiftUI
import Charts

struct MultipleLineChart: View {
    var data: [SensorValue] = [
        .init(hour: 0, value: 15.5, name: "Kitchen"),
        .init(hour: 0, value: 5.5, name: "Bedroom"),
        .init(hour: 2, value: 10.25, name: "Kitchen"),
        .init(hour: 4, value: 7.5, name: "Bedroom"),
        .init(hour: 6, value: 12.65, name: "Kitchen"),
        .init(hour: 8, value: 10.0, name: "Bedroom"),
        .init(hour: 10, value: 16.5, name: "Kitchen"),
        .init(hour: 12, value: 13.0, name: "Bedroom"),
        .init(hour: 14, value: 15.1, name: "Bedroom"),
        .init(hour: 16, value: 15.3, name: "Kitchen"),
        .init(hour: 18, value: 13.3, name: "Kitchen"),
        .init(hour: 20, value: 11.1, name: "Bedroom"),
        .init(hour: 22, value: 12.5, name: "Bedroom"),
        .init(hour: 24, value: 16.3, name: "Kitchen"),
        .init(hour: 26, value: 17.1, name: "Kitchen"),
        .init(hour: 28, value: 6.5, name: "Bedroom"),
        .init(hour: 30, value: 4.5, name: "Bedroom"),
        .init(hour: 30, value: 11.5, name: "Kitchen")
    ]
    
    var body: some View {
        Chart(data) {
            LineMark (
                x: .value("Time", $0.hour),
                y: .value("Value", $0.value)
            )
            .lineStyle(StrokeStyle(lineWidth: 5.0))
            .foregroundStyle(by: .value("Name", $0.name))
        }
    }
    
}

struct MultipleLineChart_Preview: PreviewProvider {
    static var previews: some View {
        MultipleLineChart()
    }
}
