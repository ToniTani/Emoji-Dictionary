//
//  EmojiDetailView.swift
//  Emoji Dictionary
//
//  Created by Toni Tani on 20.8.2022.
//

import SwiftUI

struct EmojiDetailView: View {
        
    var emoji: Emoji
    
    var body: some View {
        VStack {
        Text(emoji.symbol)
            .font(.system(size:280))
            
            Spacer()
            
            Text(emoji.description)
            
            Spacer()
            
            Text(String(repeating: "⭐️", count: emoji.rating))
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(emoji: Emoji(id: UUID(), symbol: "🚓", rating: 5, description: "ACAB"))
    }
}
