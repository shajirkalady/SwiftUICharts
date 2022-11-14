//
//  ChartDetailView.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/9/22.
//

import SwiftUI

struct ChartDetailView: View {
    var item: ChartItem
    var body: some View {
        VStack {
            switch item.type {
            case .bar:
                BarChartView()
                    .padding(20)
            case .line:
                LineChartView()
                    .padding(20)
            case .point:
                PointChartView()
                    .padding(20)
            case .area:
                AreaChartView()
                    .padding(20)
            case .rectangle:
                RectangleChartView()
                    .padding(20)
            case .stackedBar:
                StackedBarChartView()
                    .padding(20)
            case .multiLine:
                MultipleLineChart()
                    .padding(20)
            case .linePoint:
                LinePointChartView()
                    .padding(20)
            }
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ChartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ChartDetailView(item: chartListItems[4])
    }
}
