//
//  GameScene.swift
//  MAPD724-W2018-Lesson2
//
//  Created by Amandeep Sekhon on 2018-01-29.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import AVFoundation


class GameStartScene: SKScene {
    
    // Game Variables
    var oceanSprite: Ocean?
    var welcomeLabel: Label?
    var pressAnyKeyLabel: Label?
    
    
    
    override func didMove(to view: SKView) {
        // add ocean
        self.oceanSprite = Ocean()
        self.addChild(self.oceanSprite!)
        
        // add Game Over Label
        self.welcomeLabel = Label(labelString: "Mail Pilot", position: CGPoint(x: frame.width * 0.5, y: frame.height * 0.5), fontSize: 60.0, fontName: "Dock51", fontColor: SKColor.yellow, isCentered: true)
        self.addChild(welcomeLabel!)
        
        // add Press Any Key Label
        self.pressAnyKeyLabel = Label(labelString: "Press Any Key to Start", position: CGPoint(x: frame.width * 0.5, y: (frame.height * 0.5) - 50.0), fontSize: 25.0, fontName: "Dock51", fontColor: SKColor.yellow, isCentered: true)
        self.addChild(pressAnyKeyLabel!)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
        
        ScoreManager.Lives = 5
        ScoreManager.Score = 0
        
        if let view = self.view {
            if let scene = SKScene(fileNamed: "GameScene") {
                scene.scaleMode = .aspectFit
                view.presentScene(scene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        self.oceanSprite?.Update()
        
    }
}











