//
//  Card.swift
//  CardGame
//
//  Created by Paladugu, Sai neeraj on 10/25/16.
//  Copyright © 2016 Paladugu, Sai neeraj. All rights reserved.
//

import UIKit

class Card
{
    private var backImage : UIImage
    {
            get
            {
                return self.backImage
            }
            set(backImage)
            {
                self.backImage = backImage
            }
    }
    private var isFaceUp : Bool
    {
        get
        {
            return self.isFaceUp
        }
        set(isFaceUp)
        {
            self.isFaceUp = isFaceUp
        }
    }
    init()
    {
        backImage = UIImage(named: " cardback")!
        isFaceUp = false
    }
    
    func getBackImage()-> UIImage
    {
        return backImage
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func setFacing(isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func setBackImage(backImage : UIImage)
    {
        self.backImage = backImage
    }
    
    func toString() -> String
    {
        let description = "This Card is \(isFaceUp) and \(self.getBackImage()) is the image"
        
        return description
    }
}
