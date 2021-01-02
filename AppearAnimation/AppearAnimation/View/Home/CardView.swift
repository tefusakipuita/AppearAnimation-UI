//
//  CardView.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Property
    
    var imageName: String
    var moneyValue: Int  // 金額
    
    @State var initialValue = 0  // 金額の初期値 (アニメーション用)
    
    @State var animation = false
    
    var cardWidth: CGFloat = 145
    var cardHeight: CGFloat = 205
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            
            // MARK: - Blur Background
            Color.white.opacity(0.5)
                .shadow(color: Color.gray.opacity(0.4), radius: 6, x: -2, y: 6)
                .frame(width: cardWidth, height: cardHeight)
                .cornerRadius(20)
            
            // MARK: - Image View
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: cardWidth, height: cardHeight)
                .cornerRadius(20)
                .rotationEffect(Angle(degrees: animation ? 9 : 0))
                .scaleEffect(animation ? 0.95 : 1)
                .offset(x: animation ? 14 : 0, y: animation ? -15 : 0)
                .animation(Animation.spring(response: 0.65, dampingFraction: 0.55).delay(2.25))
            
            // MARK: - Gradient Blur
            LinearGradient(gradient: Gradient(stops: [
                .init(color: Color.black.opacity(0.001), location: 0.65),
                .init(color: Color.black.opacity(0.6), location: 0.9)
            ]),
            startPoint: .top,
            endPoint: .bottom)
            .frame(width: cardWidth, height: cardHeight)
            .cornerRadius(20)
            
            // MARK: - Value
            HStack (spacing: 0) {
                Text("\(initialValue)")
                    .font(.system(size: 26, design: .rounded))
                    .padding(.bottom, 7)
                
                Text("＄")
                    .padding(.trailing, 13)
                    .offset(x: animation ? 0 : 30)
                    .opacity(animation ? 1 : 0)
                    .animation(Animation.spring(response: 0.65, dampingFraction: 0.55).delay(1.65))
            } //: HStack
            .foregroundColor(.white)
            
        } //: ZStack
        .onAppear(perform: {
            withAnimation {
                animation = true
                 
                addNumberAnimation()
            }
        })
    }
    
    
    // MARK: - Function
    
    func addNumberAnimation() {
        
        withAnimation {
            
            let steps = moneyValue
            let totalAnimationTime = 1000
            let stepDuration = totalAnimationTime / steps
            
            (0..<steps).forEach { step in
                let updateTimeInterval = DispatchTimeInterval.milliseconds(step * stepDuration)
                
                let addValue = moneyValue / steps
                let delay = 0.3
                
                DispatchQueue.main.asyncAfter(deadline: .now() + delay + updateTimeInterval) {
                    initialValue += Int(addValue)
                }
            }
            
        }
    }
}

// MARK: - Preview

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
