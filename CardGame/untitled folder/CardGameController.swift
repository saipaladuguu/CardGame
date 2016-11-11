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
    private lazy var cardDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString())
        
    }
    @IBAction func cardClick(sender: UIButton)
    {
        clickCount += 1
        let content = "You Clicked \(clickCount) times"
        
        if let currentCard = cardDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState:
                UIControlState.Normal)
        }
        else
        {
            cardButton.setTitle("Deck over", forState: UIControlState.Normal)
            cardDeck = PlayingCardDeck()
        }
        cardLabel.text = content
    }
}
