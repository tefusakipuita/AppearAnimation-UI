//
//  ProfileView.swift
//  AppearAnimation
//
//  Created by 中筋淳朗 on 2020/12/06.
//

import SwiftUI

struct ProfileView: View {
    
    // MARK: - Property
    
    @Binding var showProfile: Bool
    
    @State var showAnimation = false
    
    @State var dismissAnimation = false
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            ZStack (alignment: .top) {
                Color.bgColor
                    .opacity(showAnimation ? 1 : 0)
                    .animation(Animation.easeOut(duration: 0.6))
                    .edgesIgnoringSafeArea(.all)
                
                RoundedRectangle(cornerRadius: 55)
                    .fill(Color.white)
                    .frame(height: 320)
                    .offset(y: -160)
                    .shadow(color: Color.gray.opacity(0.2), radius: 6, x: -2, y: 6)
            } //: ZStack
            
            VStack (spacing: 28) {
                
                // MARK: - Profile Image
                Image("person")
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(1.15)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .padding(.top, 82)
                    .shadow(color: Color.gray.opacity(0.4), radius: 6, x: -2, y: 6)
                    // animation
                    .opacity(showAnimation ? 1 : 0)
                    .offset(x: showAnimation ? 0 : -8, y: showAnimation ? 0 : 8)
                    .animation(Animation.easeOut(duration: 0.7).delay(0.3))
                
                // MARK: - Info
                HStack (spacing: 24) {
                    VStack (spacing: 9) {
                        Text("Following")
                            .foregroundColor(.gray)
                        
                        Text("306")
                            .font(.system(size: 36))
                    } //: VStack
                    // animation
                    .opacity(showAnimation ? 1 : 0)
                    .offset(x: showAnimation ? 0 : -8, y: showAnimation ? 0 : 8)
                    .animation(Animation.easeOut(duration: 0.7).delay(0.45))
                    
                    VStack (spacing: 9) {
                        Text("Followers")
                            .foregroundColor(.gray)
                        
                        Text("1,634")
                            .font(.system(size: 36))
                    } //: VStack
                    // animation
                    .opacity(showAnimation ? 1 : 0)
                    .offset(x: showAnimation ? 0 : -8, y: showAnimation ? 0 : 8)
                    .animation(Animation.easeOut(duration: 0.7).delay(0.6))
                    
                    VStack (spacing: 9) {
                        Text("Collection")
                            .foregroundColor(.gray)
                        
                        Text("21")
                            .font(.system(size: 36))
                    } //: VStack
                    // animation
                    .opacity(showAnimation ? 1 : 0)
                    .offset(x: showAnimation ? 0 : -8, y: showAnimation ? 0 : 8)
                    .animation(Animation.easeOut(duration: 0.7).delay(0.75))
                    
                } //: HStack
                .padding(.top, 13)
                
                // MARK: - Card 2
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.white)
                        .frame(width: UIScreen.screenWidth - 60, height: 160)
                        .shadow(color: Color.gray.opacity(0.2), radius: 6, x: -2, y: 6)
                        // animation
                        .opacity(showAnimation ? 1 : 0)
                        .offset(x: showAnimation ? 0 : -8, y: showAnimation ? 0 : 8)
                        .animation(Animation.easeOut(duration: 0.7).delay(0.95))
                    VStack {
                        HStack {
                            skillLabel(color: .green, title: "SwiftUI")
                            skillLabel(color: .orange, title: "Flutter")
                            skillLabel(color: .pink, title: "React Native")
                        }
                        HStack {
                            skillLabel(color: .purple, title: "Node.js")
                            skillLabel(color: .yellow, title: "SwiftUI")
                            skillLabel(color: .gray, title: "Kotlin")
                        }
                        skillLabel(color: .blue, title: "Python")
                    } //: VStack
                    .opacity(showAnimation ? 1 : 0)
                    .offset(x: showAnimation ? 0 : -8, y: showAnimation ? 0 : 8)
                    .animation(Animation.easeOut(duration: 0.7).delay(1.2))
                } //: ZStack
                
                Spacer(minLength: 0)
                
                // MARK: - Line Shape
                ZStack (alignment: .bottom) {
                    LineShape1()
                        .trim(from: 0, to: showAnimation ? 1 : 0)
                        .stroke(lineWidth: 3)
                        .fill(Color.blueGradient)
                        .frame(width: UIScreen.screenWidth, height: 240)
                        .shadow(color: Color.gray.opacity(0.4), radius: 6, x: -2, y: 6)
                        .animation(Animation.easeOut(duration: 0.7).delay(1.55))
                    
                    LineShape2()
                        .trim(from: 0, to: showAnimation ? 1 : 0)
                        .stroke(lineWidth: 3.2)
                        .fill(Color.purpleGradient)
                        .frame(width: UIScreen.screenWidth, height: 240)
                        .shadow(color: Color.gray.opacity(0.4), radius: 6, x: -2, y: 6)
                        .animation(Animation.easeOut(duration: 0.8).delay(1.7))
                    
                    // MARK: - Back Button
                    Button(action: {
                        // ※ showProfileをfalseにするだけではアニメーションしてくれない
                        
                        withAnimation (.easeOut(duration: 0.5)) {
                            // showProfile をfalseにする前に,dismissAnimation を使ってアニメーションさせて透明にしてから
                            dismissAnimation = true
                        }
                        
                        // showProfileをfalseにする
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            showProfile = false
                        }
                    }, label: {
                        ZStack {
                            Circle()
                                .fill(Color.backButtonGradient)
                                .frame(width: 70, height: 70)
                                .shadow(color: Color.gray.opacity(0.4), radius: 6, x: -2, y: 6)
                                .shadow(color: Color.white, radius: 6, x: 2, y: -6)
                            
                            Image(systemName: "homekit")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                        } //: ZStack
                        // animation
                        .scaleEffect(showAnimation ? 1 : 0)
                        .animation(Animation.spring(response: 0.35, dampingFraction: 0.25).delay(2.8))
                    })
                } //: ZStack
                
            } //: VStack
        } //: ZStack
        // 閉じる時のアニメーション
        .opacity(dismissAnimation ? 0 : 1)
        .scaleEffect(dismissAnimation ? 0 : 1, anchor: .bottom)
        // 表示の時のアニメーション
        .onAppear(perform: {
            withAnimation {
                showAnimation = true
            }
        })
    }
}

// MARK: - Preview

struct ProfileView_Previews: PreviewProvider {
    @State static var showProfile = false
    
    static var previews: some View {
        ProfileView(showProfile: $showProfile)
    }
}


