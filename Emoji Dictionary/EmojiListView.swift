//
//  EmojiListView.swift
//  Emoji Dictionary
//
//  Created by Toni Tani on 17.8.2022.
//

import SwiftUI

struct EmojiListView: View {
    
    var emojis = [Emoji(id: UUID(), symbol: "🥶")]
    
    var body: some View {
        List(emojis) { listedEmoji in
            Text(listedEmoji.symbol)
        }
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
