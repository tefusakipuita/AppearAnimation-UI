//
//  Shape.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI



// MARK: - LineShape1
struct LineShape1: Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        
        let point1 = CGPoint(x: 0, y: height * 0.18)
        let point2 = CGPoint(x: width * 0.32, y: height * 0.6)
        let point3 = CGPoint(x: width * 0.47, y: 0)
        let point4 = CGPoint(x: width * 0.65, y: height * 0.55)
        let point5 = CGPoint(x: width * 0.8, y: height * 0.3)
        let point6 = CGPoint(x: width, y: height * 0.8)
        
        // MARK: - Path
        var path = Path()
        
        path.move(to: point1)
        
        path.addCurve(to: point2,
                      control1: CGPoint(x: width * 0.16, y: height * 0.15),
                      control2: CGPoint(x: width * 0.25, y: height * 0.6))
        
        path.addCurve(to: point3,
                      control1: CGPoint(x: width * 0.4, y: height * 0.6),
                      control2: CGPoint(x: width * 0.42, y: 0))
        
        path.addCurve(to: point4,
                      control1: CGPoint(x: width * 0.51, y: 0),
                      control2: CGPoint(x: width * 0.54, y: height * 0.55))
        
        path.addCurve(to: point5,
                      control1: CGPoint(x: width * 0.72, y: height * 0.55),
                      control2: CGPoint(x: width * 0.77, y: height * 0.3))
        
        path.addCurve(to: point6,
                      control1: CGPoint(x: width * 0.85, y: height * 0.3),
                      control2: CGPoint(x: width * 0.9, y: height * 0.8))
        
        return path
    }
}


// MARK: - LineShape2
struct LineShape2: Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        
        let point1 = CGPoint(x: 0, y: height * 0.55)
        let point2 = CGPoint(x: width * 0.33, y: height * 0.3)
        let point3 = CGPoint(x: width * 0.45, y: height * 0.55)
        let point4 = CGPoint(x: width * 0.64, y: height * 0.25)
        let point5 = CGPoint(x: width * 0.8, y: height * 0.5)
        let point6 = CGPoint(x: width * 0.88, y: height * 0.42)
        let point7 = CGPoint(x: width, y: height * 0.55)
        
        // MARK: - Path
        var path = Path()
        
        path.move(to: point1)
        
        path.addCurve(to: point2,
                      control1: CGPoint(x: width * 0.3, y: height * 0.57),
                      control2: CGPoint(x: width * 0.28, y: height * 0.3))
        
        path.addCurve(to: point3,
                      control1: CGPoint(x: width * 0.367, y: height * 0.3),
                      control2: CGPoint(x: width * 0.38, y: height * 0.55))
        
        path.addCurve(to: point4,
                      control1: CGPoint(x: width * 0.53, y: height * 0.55),
                      control2: CGPoint(x: width * 0.59, y: height * 0.25))
        
        path.addCurve(to: point5,
                      control1: CGPoint(x: width * 0.7, y: height * 0.25),
                      control2: CGPoint(x: width * 0.75, y: height * 0.5))
        
        path.addCurve(to: point6,
                      control1: CGPoint(x: width * 0.84, y: height * 0.5),
                      control2: CGPoint(x: width * 0.83, y: height * 0.42))
        
        path.addCurve(to: point7,
                      control1: CGPoint(x: width * 0.9, y: height * 0.42),
                      control2: CGPoint(x: width * 0.96, y: height * 0.55))
        
        return path
    }
}
