//
//  TopBarView.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI

struct TopBarView: View {
    
    // MARK: - Property
    
    @Binding var showProfileAnimation: Bool
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 22) {
            
            // MARK: - Left Button
            Button(action: {}, label: {
                ZStack {
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 120, height: 70)
                        .offset(x: -60)
                        .shadow(color: Color.gray.opacity(0.4), radius: 6, x: -2, y: 6)
                    
                    Image(systemName: "text.alignleft")
                        .foregroundColor(.titleColor)
                        .font(.system(size: 22, weight: .regular))
                        .offset(x: -32)
                } //: ZStack
            })
            
            // MARK: - Title
            Text("Home")
                .foregroundColor(.titleColor)
                .font(.system(size: 36, weight: .semibold, design: .rounded))
                .padding(.leading, -60)
            
            Spacer()
            
            // MARK: - Right Buttons
            HStack {
                TopButton(imageName: "bookmark") {}
                
                TopButton(imageName: "person") {
                    withAnimation {
                        showProfileAnimation = true
                    }
                }
                
                TopButton(imageName: "bell") {}
            } //: HStack
            
        } //: HStack
        .padding(.trailing, 16)
    }
}

// MARK: - Preview

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
