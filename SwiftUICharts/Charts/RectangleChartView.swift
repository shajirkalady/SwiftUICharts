//
//  RectangleChartView.swift
//  SwiftUICharts
//
//  Created by Shajir Kalady on 11/14/22.
//

import SwiftUI
import Charts

struct RectangleChartView: View {
    var data: [MatrixEntry] = [
        MatrixEntry(positive: "+", negative: "+", num: 125),
        MatrixEntry(positive: "+", negative: "-", num: 10),
        MatrixEntry(positive: "-", negative: "-", num: 80),
        MatrixEntry(positive: "-", negative: "+", num: 1)
    ]

    var body: some View {
        Chart(data) {
            RectangleMark(
                x: .value("Positive", $0.positive),
                y: .value("Negative", $0.negative)
            )
            .foregroundStyle(by: .value("Number", $0.num))
        }
    }
    
}

struct RectangleChartView_Preview: PreviewProvider {
    static var previews: some View {
        RectangleChartView()
    }
}

struct MatrixEntry: Identifiable {
    var positive: String
    var negative: String
    var num: Double
    var id = UUID()
}
