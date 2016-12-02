
//  stupid.swift
//  CardGame
//  Created by Paladugu, Sai neeraj on 11/11/16.
//  Copyright © 2016 Paladugu, Sai neeraj. All rights reserved.
//

import UIKit
import Foundation

class StupidGame
{
    
    //Declaration Section
    internal var score : Int
    internal var discardPile : Int
    internal var winnerPile : Int
    internal var hand : [PlayingCard]
    internal var drawingPile : Int
    internal var drawingDeck : PlayingCardDeck
    
    
    
    //inits
    init()
    {
        self.score = 0
        self.discardPile = Int()
        self.winnerPile = Int()
        self.hand = [PlayingCard]()
        self.drawingPile = Int()
        self.drawingDeck = PlayingCardDeck()
    }
    
    //Methods
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
        drawCards()
    }
    
    func drawCards() -> Void
    {
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
    }
    
    func checkMatch() -> Int
    {
        var points = Int()
        
        for(var OuterLoop = 0; OuterLoop < hand.count; OuterLoop += 1)
        {
            let handSize = hand.count
            for(var InnerLoop = 0; InnerLoop < hand.count; InnerLoop += 1)
            {
                if(OuterLoop != InnerLoop && hand[OuterLoop].rank == hand[InnerLoop].rank)
                {
                    hand.removeAtIndex(InnerLoop)
                    points += 2
                    InnerLoop -= 1
                }
            }
            if(handSize != hand.count)
            {
                hand.removeAtIndex(OuterLoop)
                points += 2
                OuterLoop -= 1
            }
        }
        let negativePoints = hand.count
        return points - negativePoints
    }
    
    func playMatchGame() -> Void
    {

        score += checkMatch()
        hand.removeAll()
        
    }
}

