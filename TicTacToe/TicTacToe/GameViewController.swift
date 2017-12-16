//
//  ViewController.swift
//  TicTacToe
//
//  Created by bla on 12/9/17.
//  Copyright © 2017 bla. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    // MARK: - Loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Appeared")
        
        // clasa curenta este GameVIewController
        // instanta ei este accesibila in interior folosind SELF
        let this_instance = self
        // ViewController prezinta elementele grafice intr-un View
        // View este de tip UIView
        // accesul la View se face folosind self.view
        let current_view = this_instance.view
        // set color for the background of the view
        //current_view?.backgroundColor = UIColor.red
        SetBGColorForView(
            view : current_view!,
            color: UIColor.red
        )
        
        // Create one view for keeping the score of the game
        // View has 1 label for Player 1
        // one label for VS word
        // one label for Player 2
        // It also contains an image/logo
        // View is edge to edge on horizontal
        // View occupies 40% of the screen
        // Color is Yellow
        CreateScoreView()
        
        // Create one view for the game
        // View is empty
        // View is edge to edge on horizontal
        // View occupies 60% of the screen
        // View is blue
        CreateGameView()
    }
    
    func CreateScoreView()
    {
        let score_view_width = self.view.frame.width
        let score_view_height = self.view.frame.height * 0.4
        
        // UI - User Interface ~ UIKit
        let scoreView = UIView()
        // CG - Core Graphics
        scoreView.frame = CGRect(
            x: 0,
            y: 0,
            width: score_view_width,
            height: score_view_height
        )
        // create custom color for score view
        let score_view_color = UIColor(
            displayP3Red: 0.95,
            green: 0.85,
            blue: 0.1,
            alpha: 1
        )
        SetBGColorForView(
            view: scoreView,
            color: score_view_color
        )
        self.view.addSubview(scoreView)
        // Create label for First Player
        CreateCustomLabel(parentView: scoreView, verticalOffset: 40.0, text: "First Player")
        // Create label for VS
        CreateCustomLabel(parentView: scoreView, verticalOffset: 90.0, text: "vs")
        // Create label for Second Player
        CreateCustomLabel(parentView: scoreView, verticalOffset: 140.0, text: "Second Player")
        // Create image view for game logo
        let logo = UIImageView(
            frame: CGRect(
                x: 200,
                y: 30,
                width: 120,
                height: 120
            )
        )
        logo.image = UIImage(named: "logo")
        scoreView.addSubview(logo)
        // Add reset button
        let resetButton = UIButton()
        // Add frame
        resetButton.frame = CGRect(
            x: score_view_width - 60,
            y: score_view_height - 60,
            width: 50,
            height: 50
        )
        // Add background color
        resetButton.backgroundColor = .white // UICOlor.white
        // Add title
        resetButton.setTitle("RST", for: UIControlState.normal)
        resetButton.setTitle("-", for: UIControlState.highlighted)
        // Add title color
        resetButton.setTitleColor(.black, for: .normal) // UIControlState.normal
        resetButton.setTitleColor(.red, for: .highlighted)
        // Manipulate layer for the button
        resetButton.layer.borderWidth = 1.0
        resetButton.layer.borderColor = UIColor.black.cgColor
        resetButton.layer.cornerRadius = 25.0
        // Add button to the view
        scoreView.addSubview(resetButton)
        
    }
    
    func CreateGameView()
    {
        let game_view_width = self.view.frame.width
        let game_view_height = self.view.frame.height * 0.6
        
        // UI - User Interface ~ UIKit
        let gameView = UIView()
        // CG - Core Graphics
        gameView.frame = CGRect(
            x: 0,
            y: self.view.frame.height * 0.4,
            width: game_view_width,
            height: game_view_height
        )
        // create custom color for score view
        let game_view_color = UIColor.magenta
        SetBGColorForView(
            view: gameView,
            color: game_view_color
        )
        self.view.addSubview(gameView)
        
        
        
        // Add reset button
        let testButton = UIButton()
        testButton.setBackgroundImage(UIImage(named:"logo"), for: .normal)
        testButton.setBackgroundImage(UIImage(named:"card"), for: .highlighted)
        // Add frame
        testButton.frame = CGRect(
            x: game_view_width/2 - 100,
            y: game_view_height/2 - 100,
            width: 200,
            height: 200
        )
        // Add background color
        testButton.backgroundColor = .white // UIColor.white
        // Add title
        testButton.setTitle("TEST", for: UIControlState.normal)
        testButton.setTitle("-", for: UIControlState.highlighted)
        // Add title color
        testButton.setTitleColor(.black, for: .normal) // UIControlState.normal
        testButton.setTitleColor(.red, for: .highlighted)
        // Manipulate layer for the button
        testButton.layer.borderWidth = 1.0
        testButton.layer.borderColor = UIColor.black.cgColor
        testButton.layer.cornerRadius = 25.0
        // Add action for button
        testButton.addTarget(self, action:#selector(GameViewController.ShowAlertViewController), for: UIControlEvents.touchUpInside)
        // Add button to the view
        gameView.addSubview(testButton)
    }
    
    func CreateCustomLabel(parentView : UIView, verticalOffset: Double, text: String)
    {
        let customLabel = UILabel()
        customLabel.frame = CGRect(x: parentView.frame.origin.x + 5, y: CGFloat(verticalOffset), width: 200, height: 40)
        customLabel.text = text
        customLabel.textColor = UIColor.blue
        customLabel.textAlignment = NSTextAlignment.left
        customLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        // add label to the sub view (score view)
        parentView.addSubview(customLabel)
    }
    
    // functie care seteaza culoare pentru un vie
    // parametrii: view UIView, color UIColor
    func SetBGColorForView(view : UIView, color: UIColor)
    {
        view.backgroundColor = color
    }
    
    @objc func ShowAlertViewController()
    {
        let alert  = UIAlertController(title: "Alert", message: "Button pressed!", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction) -> Void in
            self.ShowAmTerminat()
        }))
        present(alert, animated: true, completion: nil)
    }
    
    func ShowAmTerminat()
    {
        print("Done")
    }
}

