
//  stupid.swift
//  CardGame
//  Created by Paladugu, Sai neeraj on 11/11/16.
//  Copyright © 2016 Paladugu, Sai neeraj. All rights reserved.
//

import Foundation

class StupidGame
{
    //Declarations
    internal var cardDeck : PlayingCardDeck
    internal var hand : [PlayingCard]
    internal var score : Int
    
    
    //Inits
    init()
    {
        cardDeck = PlayingCardDeck()
        hand = [PlayingCard]()
        score = Int(0)
    }
    
    //Methods
    func startGame() -> Void
    {
        cardDeck.shuffleDeck()
        drawCards()
    }
    
    
    //Method to Draw a Card from the Deck
    fileprivate func drawCards() -> Void
    {
        hand.append((cardDeck.drawCard() as? PlayingCard)!)
        hand.append((cardDeck.drawCard() as? PlayingCard)!)
    }
    
    //Checks to see if Cards match
    func checkMatch() -> Bool
    {
        let hasMatch : Bool
        if(hand[0].rank == hand[1].rank) || (hand[0].suit == hand[1].suit)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        
        return hasMatch
        
    }
    
    //Checks the drawn cards to detect a match
    //If checkMatch() returns true, score increases
    //Cards then removed and drawCards() is called
    func playGame() -> Void
    {
        if cardDeck.cards.count > 0
        {
            if checkMatch()
            {
                score += 5
            }
            else
            {
                score -= 2
            }
        }
        hand.removeAll()
        drawCards()
    }
}
