//
//  HomeView.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Property
    
    @Binding var showProfileAnimation: Bool
    
    @State var showAnimation = false
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            
            // MARK: - Top Bar
            TopBarView(showProfileAnimation: $showProfileAnimation)
                .padding(.top, 20)
            
            // MARK: - Scroll 1
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 33) {
                    ForEach(1...4, id: \.self) { i in
                        CardView(imageName: "p\(i)", moneyValue: 120)
                    }
                } //: HStack
                .padding(.horizontal, 18)
                .padding(.vertical, 35)
            } //: Scroll
            .padding(.top, 40)
            
            // MARK: - Rectangle
            HStack (spacing: 22) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white.opacity(0.5))
                    .frame(width: UIScreen.screenWidth / 2 - 40, height: 160)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white.opacity(0.5))
                    .frame(width: UIScreen.screenWidth / 2 - 40, height: 160)
            } //: HStak
            .padding(.bottom, 16)
            .offset(x: showAnimation ? 0 : UIScreen.screenWidth)
            .animation(Animation.spring(response: 0.5, dampingFraction: 0.4).delay(2.8))
            
            HStack (spacing: 22) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white.opacity(0.5))
                    .frame(width: UIScreen.screenWidth / 2 - 40, height: 160)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white.opacity(0.5))
                    .frame(width: UIScreen.screenWidth / 2 - 40, height: 160)
            } //: HStak
            .offset(x: showAnimation ? 0 : UIScreen.screenWidth)
            .animation(Animation.spring(response: 0.5, dampingFraction: 0.4).delay(3))
            
            Spacer()
            
        } //: VStack
        .onAppear(perform: {
            withAnimation {
                showAnimation = true
            }
        })
        
    }
    
    
}

// MARK: - Preview

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
