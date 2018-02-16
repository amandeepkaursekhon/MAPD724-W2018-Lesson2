//
//  Label.swift
//  MAPD724-W2018-Lesson2
//
//  Created by Amandeep Sekhon on 2018-02-12.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import SpriteKit
import  CoreGraphics
class Label: SKLabelNode {
//Private Instance Variables
    
    
    //Public Variables
    
    //constructors
    init(labelString:String, position:CGPoint, fontSize:CGFloat, fontName:String, fontColor:SKColor, isCentered:Bool) {
        super.init()
    self.text = labelString
    
        self.fontSize = fontSize
        self.fontName = fontName
        self.fontColor = fontColor
        
        if(isCentered) {
            self.position = position
        }
        else
        {
          self.position.x = position.x + self.frame.width * 0.5
            self.position.y = position.y - self.frame.height * 0.5
        }
        
        
        self.zPosition = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
}
