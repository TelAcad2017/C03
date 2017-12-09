//
//  ViewController.swift
//  Curs03App1
//
//  Created by Student Doisprezece on 09/12/2017.
//  Copyright © 2017 Student Doisprezece. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(true)
        print("Apepar")
        let current_view = self.view
        current_view?.backgroundColor = UIColor.red
        
    
    
    //create one view for keeping the score of the game - DONE
    //view has 1 label for player1
    //one lable for VS word
    //one lable for Player2
    //it also contains an image/logo
    //color .... "la alegere"
    createScoreView()


    
    
    //create one view for the game
    //view is empty
    //view is blue
    //view ocupies 60% of the screen
    //with is full size screen
 //   createGameView()

}

    func createScoreView(){
        let scoreView = UIView()
        let scoreViewWidth = self.view.frame.width
        let scoreViewHeight = 0.4 * self.view.frame.height
        scoreView.frame = CGRect(x:0, y: 0, width: scoreViewWidth, height: scoreViewHeight)
        let scoreViewCollor = UIColor(displayP3Red: 0, green: 1, blue:0, alpha: 1)

        setBGColorForView(view: scoreView, color: scoreViewCollor)
        
        self.view.addSubview(scoreView)
        
        let labelPlayer1 = UILabel()
        labelPlayer1.frame = CGRect(x: 20, y: 20, width: 120, height: 40)
        labelPlayer1.text = "Player1"
        labelPlayer1.textColor = UIColor.yellow
        labelPlayer1.textAlignment = NSTextAlignment.center
        labelPlayer1.font = UIFont.boldSystemFont(ofSize: 20)
        scoreView.addSubview(labelPlayer1)
        
        let labelVS = UILabel()
        labelVS.frame = CGRect(x: 20, y: 70, width: 120, height: 40)
        labelVS.text = "VS"
        labelVS.textColor = UIColor.yellow
        labelVS.textAlignment = NSTextAlignment.center
        labelVS.font = UIFont.italicSystemFont(ofSize: 25)
        scoreView.addSubview(labelVS)
        
        let labelPlayer2 = UILabel()
        labelPlayer2.frame = CGRect(x: 50, y: 120, width: 120, height: 40)
        labelPlayer2.text = "Player2"
        labelPlayer2.textColor = UIColor.yellow
        labelPlayer2.textAlignment = NSTextAlignment.center
        labelPlayer2.font = UIFont.boldSystemFont(ofSize: 20)
        scoreView.addSubview(labelPlayer2)
        
        
        let imageJoc = UIImageView()
        imageJoc.frame = ""
        
    }
    
    
    func setBGColorForView(view: UIView, color: UIColor){
        view.backgroundColor = color
    }
    
    
    
}

