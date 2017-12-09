//
//  ViewController.swift
//  TicTacToe
//
//  Created by bla on 12/9/17.
//  Copyright © 2017 bla. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

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
        // View is edge to edge on horiontal
        // View occupies 40% of the screen
        // Color is Yellow
        CreateScoreView()
        
        // Create one view for the game
        // View is empty
        // View is edge to edge on horiontal
        // View occupies 60% of the screen
        // View is blue
        //CreateGameView()
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
        let label_first_player = UILabel()
        label_first_player.frame = CGRect(x: 20, y: 40, width: 200, height: 40)
        label_first_player.text = "First Player"
        label_first_player.textColor = UIColor.blue
        label_first_player.textAlignment = NSTextAlignment.center
        label_first_player.font = UIFont.boldSystemFont(ofSize: 20)
        // add label to the sub view (score view)
        scoreView.addSubview(label_first_player)
        //TODO: Create label for VS word
        //TODO: Create label for Second Player
        
        
    }
    
    // functie care seteaza culoare pentru un vie
    // parametrii: view UIView, color UIColor
    func SetBGColorForView(view : UIView, color: UIColor)
    {
        view.backgroundColor = color
    }
}

