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
    createGameView()

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
        labelPlayer1.textColor = UIColor.brown
        labelPlayer1.textAlignment = NSTextAlignment.center
        labelPlayer1.font = UIFont.boldSystemFont(ofSize: 20)
        scoreView.addSubview(labelPlayer1)
        
        let labelVS = UILabel()
        labelVS.frame = CGRect(x: 20, y: 70, width: 120, height: 40)
        labelVS.text = "VS"
        labelVS.textColor = UIColor.brown
        labelVS.textAlignment = NSTextAlignment.center
        labelVS.font = UIFont.italicSystemFont(ofSize: 25)
        scoreView.addSubview(labelVS)
        
        let labelPlayer2 = UILabel()
        labelPlayer2.frame = CGRect(x: 70, y: 120, width: 120, height: 40)
        labelPlayer2.text = "Player2"
        labelPlayer2.textColor = UIColor.brown
        labelPlayer2.textAlignment = NSTextAlignment.center
        labelPlayer2.font = UIFont.boldSystemFont(ofSize: 20)
        scoreView.addSubview(labelPlayer2)
        
        let rstButton = UIButton()
        rstButton.frame = CGRect(x: scoreViewWidth/2 + 50, y: scoreViewHeight/2 + 50, width: 100, height: 100)
        rstButton.setBackgroundImage(UIImage(named: "logo"), for: .normal)
        rstButton.setBackgroundImage(UIImage(named: "logo"), for: .highlighted)
        
        scoreView.addSubview(rstButton)
        
        
        let imageJoc = UIImageView()
        imageJoc.image = UIImage(named: "logo")
        imageJoc.frame = CGRect(x: 170, y: 40, width: 200, height: 120)
        scoreView.addSubview(imageJoc)
        
    }
    
    func createGameView(){
        let gameView = UIView()
        let gameViewWidth = self.view.frame.width
        let gameViewHeight = 0.6 * self.view.frame.height
        gameView.frame = CGRect(x: 0, y: 0.4 * self.view.frame.height, width: gameViewWidth, height: gameViewHeight)
        let gameViewCollor = UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1)
        setBGColorForView(view: gameView, color: gameViewCollor)
        self.view.addSubview(gameView)
        
        
        let imageGrid = UIImageView()
        imageGrid.image = UIImage(named: "grid")
        imageGrid.frame = CGRect(x: 20, y: 20, width: 0.9 * gameViewWidth, height: 0.9 * gameViewHeight)
//        let imageO = UIImage(named: "zero")
//        let imageX = UIImage(named: "cross")
        
        let button1 = UIButton()
        button1.frame = CGRect(x: 30.5, y: 30, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button1.backgroundColor = .cyan
        
      //  button1.setBackgroundImage(UIImage(named: "cross"), for: .normal)
       // button1.setBackgroundImage(UIImage(named: "zero"), for: .highlighted)
        
        
        let button2 = UIButton()
        button2.frame = CGRect(x: 155, y: 30, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button2.backgroundColor = .cyan
        button2.setBackgroundImage(UIImage(named: "cross"), for: .highlighted)
        let button3 = UIButton()
        button3.frame = CGRect(x: 277, y: 30, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button3.backgroundColor = .cyan
        
        let button4 = UIButton()
        button4.frame = CGRect(x: 30.5, y: 163, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button4.backgroundColor = .cyan
        let button5 = UIButton()
        button5.frame = CGRect(x: 155, y: 163, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button5.backgroundColor = .cyan
        let button6 = UIButton()
        button6.frame = CGRect(x: 277, y: 163, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button6.backgroundColor = .cyan
        
        let button7 = UIButton()
        button7.frame = CGRect(x: 30.5, y: 295, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button7.backgroundColor = .cyan
        let button8 = UIButton()
        button8.frame = CGRect(x: 155, y: 295, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button8.backgroundColor = .cyan
        let button9 = UIButton()
        button9.frame = CGRect(x: 277, y: 295, width: 0.28 * 0.9 * gameViewWidth, height: 0.30 * 0.9 * gameViewWidth)
        button9.backgroundColor = .cyan
        
        gameView.addSubview(imageGrid)
        gameView.addSubview(button7)
        gameView.addSubview(button8)
        gameView.addSubview(button9)
        gameView.addSubview(button4)
        gameView.addSubview(button5)
        gameView.addSubview(button6)
        gameView.addSubview(button3)
        gameView.addSubview(button2)
        gameView.addSubview(button1)
        
        
    }
    
    
    
    
    func setBGColorForView(view: UIView, color: UIColor){
        view.backgroundColor = color
    }
    
    
    
}

