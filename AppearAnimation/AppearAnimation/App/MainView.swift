//
//  ContentView.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Property
    
    @State var showProfile = false
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background Blur Image
            Image("bg")
                .resizable()
                .scaledToFill()
                .blur(radius:18)
                .edgesIgnoringSafeArea(.all)
                .rotationEffect(Angle(degrees: -90))
                .frame(width: UIScreen.screenWidth)
                .opacity(0.94)
            
            // MARK: - Home View
            HomeView(showProfileAnimation: $showProfile)
            
            // MARK: - Profile View
            if showProfile {
                ProfileView(showProfile: $showProfile)
            }
            
        } //: ZStack
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
