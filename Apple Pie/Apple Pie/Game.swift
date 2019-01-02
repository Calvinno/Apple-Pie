//
//  Game.swift
//  Apple Pie
//
//  Created by Calvin Cantin on 18-09-02.
//  Copyright © 2018 Calvin Cantin. All rights reserved.
//

import Foundation
struct Game
{
    static var totalPoint: Int = 0
    var word: String
    var incorectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord:String
    {
        var guessedWord = ""
    
        for letter in word
        {
            if guessedLetters.contains(letter)
            {
                guessedWord +=  "\(letter)"
            }
            else
            {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character)
    {
        guessedLetters.append(letter)
        if !word.contains(letter)
        {
            incorectMovesRemaining -= 1
        }
    }
}
