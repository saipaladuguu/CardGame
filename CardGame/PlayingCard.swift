//
//  PlayingCard.swift
//  CardGame
//
//  Created by Paladugu, Sai neeraj on 10/25/16.
//  Copyright © 2016 Paladugu, Sai neeraj. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    //Private var rank: int
    private var suit : String
    {
    get
        {
            return self.suit
        }
    set(suit)
        {
            self.suit = suit
        }
    }
    private var color : UIColor
    
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    
    override init()
    {
        suit = ""
        color = UIColor()
        super.init()
        rank = 0;

    }
    
    func getRank() -> Int
    {
        return rank
    }
    
    func getSuit() -> String
    {
        return suit
    }
    
    func getColor() -> UIColor
    {
        return color
    }
    override func toString() -> String
    {
        let backStatus : String
        if self.isFacing()
        {
            backStatus = "is face up"
        }
        else
        {
            backStatus = "is face down"
        }
        let description = " The card rank is: \(rank) and its suit is \(suit). It has a color of \(color)"
        
        return description
    }
}