//
//  TopButton.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI

struct TopButton: View {
    
    // MARK: - Property
    
    var imageName: String
    
    var action: () -> Void
    
    
    // MARK: - Body

    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 50, height: 50)
                    .shadow(color: Color.gray.opacity(0.4), radius: 6, x: -2, y: 6)
                
                Image(systemName: imageName)
                    .foregroundColor(.titleColor)
                    .font(.system(size: 22, weight: .regular))
            } //: ZStack
        }) //: Button
    }
}

// MARK: - Preview

struct TopButton_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
