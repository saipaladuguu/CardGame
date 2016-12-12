//
//  Card.swift
//  CardGame
//
//  Created by Paladugu, Sai neeraj on 10/25/16.
//  Copyright © 2016 Paladugu, Sai neeraj. All rights reserved.
//

class Card
{
   
    internal var isFaceUp : Bool
    
    init()
    {
        isFaceUp = false
    }
    
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func setFacing(_ isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    
    func toString() -> String
    {
        let description = "This Card is \(isFaceUp)"
        
        return description
    }
}
