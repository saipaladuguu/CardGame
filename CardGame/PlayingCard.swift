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
    internal var color : UIColor
    internal var rank : Int

    
    override init()
    {
        suit = String()
        color = UIColor.red
        rank = 0
        super.init()
    }
    
    init(withRank: Int, ofSuit:String)
    {
        
        color = UIColor.red
        suit = ofSuit
        rank = withRank
        super.init()
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
        let description = " The card rank is: \(rank) and its suit is \(suit). It has a color of \(color) and \(backStatus)"
        
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
    func getCardData() -> String
    {
        return "\(PlayingCard.validRanks() [rank]) \(suit)"
    }

}
