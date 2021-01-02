//
//  skillLabel.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/07.
//

import SwiftUI

struct skillLabel: View {
    
    // MARK: - Property
    
    var color: Color
    var title: String
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 13, height: 13)
            
            Text(title)
                .foregroundColor(.titleColor)
        } //: HStack
    }
}

// MARK: - Preview

struct skillLabel_Previews: PreviewProvider {
    @State static var showProfile = false
    
    static var previews: some View {
        ProfileView(showProfile: $showProfile)
    }
}
