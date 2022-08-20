//
//  EmojiListView.swift
//  Emoji Dictionary
//
//  Created by Toni Tani on 17.8.2022.
//

import SwiftUI

struct EmojiListView: View {
    
    var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "🥶", rating: 4, description: "Frozen face"),
                            Emoji(id: UUID(), symbol: "👽", rating: 4, description: "Ayy Lmao"),
                            Emoji(id: UUID(), symbol: "💣", rating: 5, description: "BOOM!"),
                            Emoji(id: UUID(), symbol: "✝️", rating: 5, description: "Latin Cross"),
                           Emoji(id: UUID(), symbol: "🚴🏼‍♂️", rating: 5, description: "Cyclist")]
    
    var body: some View {
        NavigationView {
        List(emojis) { listedEmoji in
            NavigationLink(destination: EmojiDetailView(emoji: listedEmoji)) {
                Text("\(listedEmoji.symbol) - \(listedEmoji.description)")
            }
        }
        .navigationTitle("Emoji count is \(emojis.count)")
            
        }
    }
}
struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
    var rating: Int
    var description: String
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
