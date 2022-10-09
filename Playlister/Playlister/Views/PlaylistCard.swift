//
//  PlaylistCard.swift
//  Playlister
//
//  Created by Chavez Harris on 10/8/22.
//

import Foundation
import SwiftUI

struct PlaylistCard: View {
    var playlist: Playlist
    
    var body: some View {
        VStack{
            Image(playlist.playlistArtString)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
            VStack{
                Text(playlist.name)
                    .font(.headline)
                    .lineLimit(2)
                Text(playlist.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
                Button("Upvote") {
                    
                }
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(8)
            }
        
        .padding()
        Spacer()
    }
    .frame(height: 400)
    .cornerRadius(8)
    .overlay(
        RoundedRectangle(cornerRadius: 8)
            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
    )
    .shadow(radius: 1)
}

}


struct PlaylistCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlaylistCard(playlist: playlists[0])
                .previewLayout(.fixed(width: 300, height: 510))
            PlaylistCard(playlist: playlists[1])
                .previewLayout(.fixed(width: 300, height: 510))
        }
    }
}








