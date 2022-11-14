//
//  MasterView.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/9/22.
//

import SwiftUI

struct MasterView: View {
    var items: [ChartItem]
    
    var body: some View {
        List(items) { item in
            NavigationLink(destination: ChartDetailView(item: item)) {
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    Text(item.info)
                        .font(.subheadline)
                        .fontWeight(.light)
                    
                    switch item.type {
                    case .bar:
                        BarChartView()
                    case .line:
                        LineChartView()
                    case .point:
                        PointChartView()
                    case .area:
                        AreaChartView()
                    case .rectangle:
                        RectangleChartView()
                    case .stackedBar:
                        StackedBarChartView()
                    case .multiLine:
                        MultipleLineChart()
                    case .linePoint:
                        LinePointChartView()
                    }
                }
                .padding(.bottom, 20)
            }
        }
        .navigationTitle("SwiftUI Charts")
    }
}

struct MasterView_Preview: PreviewProvider {
    static var previews: some View {
        MasterView(items: chartListItems)
    }
}
