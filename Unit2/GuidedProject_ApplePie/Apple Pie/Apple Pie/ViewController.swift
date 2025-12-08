//
//  ViewController.swift
//  Apple Pie
//
//  Created by fall2025 on 12/7/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    struct Game {
        var word: String
        var incorrectMovesRemaining: Int
        var guessedLetters: [Character] = []
        
        var formattedWord: String {
            var guess = ""
            for letter in word {
                if guessedLetters.contains(letter) {
                    guess += "\(letter)"
                } else {
                    guess += "_"
                }
            }
            return guess
        }
        
        mutating func playerGuessed(letter: Character) {
            guessedLetters.append(letter)
            if(!word.contains(letter)) {
                incorrectMovesRemaining -= 1;
            }
        }
    }
    
    var listOfWords = ["frog", "dog", "cat", "rumplstilskin"]
    var incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    var currentGame: Game!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    var label: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord{
            letters.append(String(letter))
        }
        correctWordLabel.text = letters.joined(separator: " ")
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    
    func newRound() {
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
            enableLetterButtons(true)
            updateUI()
        } else {
            enableLetterButtons(false)
        }
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        }
        updateUI()
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
}
