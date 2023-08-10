//
//  VideoView.swift
//  PlayVideo
//
//  Created by Conner on 2023/06/27.
//

import SwiftUI
import YouTubePlayerKit

struct VideoView: View {
    
    let player = YouTubePlayer(
        source: .url("https://youtu.be/57gSMzKbUYM"),
        configuration: YouTubePlayer.Configuration(
            // Define which fullscreen mode should be used (system or web)
            fullscreenMode: .system,
            // Enable auto play
            autoPlay: true,
            // Hide controls
            showControls: false,
            // Enable loop
            showFullscreenButton: false,
            showAnnotations: false,
            loopEnabled: false,
            playInline: false,
            showRelatedVideos: false
        )
    )
    
    var body: some View {
        YouTubePlayerView(
            self.player
        )
        .disabled(true)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .statusBarHidden()
        .background(Color.black)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
