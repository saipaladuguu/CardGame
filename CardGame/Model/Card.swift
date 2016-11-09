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
    internal var backImage : UIImage
   
    internal var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage(named: "John-Cena-Smiling-PNG")!
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
