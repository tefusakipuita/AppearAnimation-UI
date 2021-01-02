//
//  Extension.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI



extension Color {
    
    static let titleColor = Color("titleColor")
    static let bgColor = Color("bgColor")
    
    static let shapeBlue = Color("shapeBlue")
    static let lightBlue = Color("lightBlue")
    static let shapePurple = Color("shapePurple")
    static let shapePink = Color("shapePink")
    
    
    static let blueGradient = LinearGradient(gradient: Gradient(colors: [Color.shapeBlue, Color.lightBlue]), startPoint: .leading, endPoint: .trailing)
    
    static let purpleGradient = LinearGradient(gradient: Gradient(colors: [Color.shapePurple, Color.shapePink]), startPoint: .leading, endPoint: .trailing)
    
    static let backButtonGradient = LinearGradient(gradient: Gradient(colors: [Color.lightBlue, Color.shapePurple]), startPoint: .topTrailing, endPoint: .bottomLeading)
}


extension UIScreen {
    
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
}
