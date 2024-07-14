//
//  DataPage.swift
//  Demo Airgeek
//
//  Created by Wang Yidong on 25.04.2024.
//

import SwiftUI
import Charts
import DomainGesture
struct DataPoint: Hashable {
    let x: Double
    let y: Double
}
struct DataPage: View {
    @State var domain: ClosedRange<Double> = 0...100
    
    @State var dataPoints = (0..<50000).map {
        DataPoint(
            x: Double($0),
            y: .random(in: 0...10)
        )
    }
        
    /*
    @State var dataPoints: [DataPoint] = [
        DataPoint(x: 1, y: 33),
        DataPoint(x: 2, y: 42),
        DataPoint(x: 3, y: 65),
        DataPoint(x: 4, y: 39),
        DataPoint(x: 5, y: 46),
        DataPoint(x: 6, y: 10),
        DataPoint(x: 7, y: 25),
        DataPoint(x: 8, y: 33),
        DataPoint(x: 9, y: 46),
        DataPoint(x: 10, y: 58),
        DataPoint(x: 11, y: 43),
        DataPoint(x: 12, y: 62),
        DataPoint(x: 13, y: 65),
        DataPoint(x: 14, y: 59),
        DataPoint(x: 15, y: 66),
        DataPoint(x: 16, y: 10),
        DataPoint(x: 17, y: 5),
        DataPoint(x: 18, y: 3),
        DataPoint(x: 19, y: 6),
        DataPoint(x: 20, y: 8),
        DataPoint(x: 21, y: 3),
        DataPoint(x: 22, y: 12),
        DataPoint(x: 23, y: 65),
        DataPoint(x: 24, y: 49),
        DataPoint(x: 25, y: 46),
        DataPoint(x: 26, y: 10),
        DataPoint(x: 27, y: 5),
        DataPoint(x: 28, y: 3),
        DataPoint(x: 29, y: 65),
        DataPoint(x: 30, y: 48),
        DataPoint(x: 31, y: 3),
        DataPoint(x: 32, y: 42),
        DataPoint(x: 33, y: 35),
        DataPoint(x: 34, y: 59),
        DataPoint(x: 35, y: 26),
        DataPoint(x: 36, y: 50),
        DataPoint(x: 37, y: 55),
        DataPoint(x: 38, y: 33),
        DataPoint(x: 39, y: 56),
        DataPoint(x: 40, y: 28)
    ]
     */
    
        var dataPointsInDomain: Array<DataPoint> {
            dataPoints.filter { domain.contains($0.x) }
        }
        //TODO: edit chart
        var body: some View {
                GeometryReader { geometry in
                    VStack {
                        DomainGesture($domain) {
                            Chart(dataPointsInDomain, id: \.self) {
                                LineMark(
                                    x: .value("X", $0.x),
                                    y: .value("Y", $0.y)
                                )
                            }
                            .chartXScale(domain: domain)
                            .frame(height: geometry.size.height / 3) // 设置Chart高度为屏幕高度的三分之一
                        }
                        .padding()
                        .navigationTitle("Data")
                        
                        Spacer() // 使其余部分留空或添加其他视图
                    }
                }
            }
        
}

#Preview {
    DataPage()
}
