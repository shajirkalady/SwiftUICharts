//
//  AreaChartView.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/14/22.
//

import SwiftUI
import Charts

struct AreaChartView: View {
    var data: [SensorValue] = [
        .init(hour: 0, value: 5.5),
        .init(hour: 2, value: 6.25),
        .init(hour: 4, value: 7.5),
        .init(hour: 6, value: 8.65),
        .init(hour: 8, value: 10.0),
        .init(hour: 10, value: 12.5),
        .init(hour: 12, value: 13.0),
        .init(hour: 14, value: 15.1),
        .init(hour: 16, value: 15.3),
        .init(hour: 18, value: 13.3),
        .init(hour: 20, value: 11.1),
        .init(hour: 22, value: 12.5),
        .init(hour: 24, value: 9.3),
        .init(hour: 26, value: 7.1),
        .init(hour: 28, value: 6.5),
        .init(hour: 30, value: 4.5)
    ]
    
    var body: some View {
        Chart(data) {
            AreaMark (
                x: .value("Time", $0.hour),
                y: .value("Value", $0.value)
            )
            .lineStyle(StrokeStyle(lineWidth: 5.0))
            .foregroundStyle(.purple)
        }
        .chartForegroundStyleScale([
            "Value": .purple,
        ])
        .chartSymbolScale([
            "Value": Circle().strokeBorder(lineWidth: 5),
        ])
    }
    
}

struct AreaChartView_Preview: PreviewProvider {
    static var previews: some View {
        AreaChartView()
    }
}
