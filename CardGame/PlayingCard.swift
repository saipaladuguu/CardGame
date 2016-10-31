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
    internal var suit : String
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
    internal var color : UIColor
    
    internal var rank : Int
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
        super.init()
        suit = String()
        color = UIColor.redColor()
        rank = 0
    }
    
    init(withRank: Int, ofSuit:String)
    {
        super.init();
        color = UIColor.redColor()
        suit = ofSuit
        rank = withRank
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
    
    
    // The class modifier makes it so the method is visible without an instance
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    
    class func validRanks() -> [String]
    {
        return [ "??", "A", "2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♠️","♦️","♥️","♣️"]
    }
}