//
//  ContentView.swift
//  PlayVideo
//
//  Created by Conner on 2023/06/25.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                VideoView()
            } label: {
                Image("home")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
            }
        }
        .navigationBarBackButtonHidden()
        .statusBarHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
