//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Paladugu, Sai neeraj on 10/31/16.
//  Copyright © 2016 Paladugu, Sai neeraj. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    internal lazy var cards = [PlayingCard]()
    
    override init()
    {
        super.init()
    }
    
    func shuffleDeck() -> Void
    {
    }
    
    func orderDeck() -> Void
    {
        
    }
    
}
