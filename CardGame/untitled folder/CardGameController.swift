//
//  CardGameController.swift
//  CardGame
//
//  Created by Paladugu, Sai neeraj on 10/27/16.
//  Copyright © 2016 Paladugu, Sai neeraj. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    fileprivate lazy var cardDeck = PlayingCardDeck()
    fileprivate lazy var clickCount = Int()
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString())
        
    }
    @IBAction func cardClick(_ sender: UIButton)
    {
        clickCount += 1
        let content = "You Clicked \(clickCount) times"
        
        if let currentCard = cardDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", for:
                UIControlState())
        }
        else
        {
            cardButton.setTitle("Deck over", for: UIControlState())
            cardDeck = PlayingCardDeck()
        }
        cardLabel.text = content
    }
}
