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
   
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
            {
                let tempCard = PlayingCard()
                tempCard.rank = rank
                tempCard.suit = suit
                cards.append(tempCard)
            }
        }
        
    }
    func orderDeck() -> Void
    {
        
    }
    
}
