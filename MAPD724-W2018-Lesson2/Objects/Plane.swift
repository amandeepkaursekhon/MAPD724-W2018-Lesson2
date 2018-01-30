//
//  Plane.swift
//  MAPD724-W2018-Lesson2
//
//  Created by Amandeep Sekhon on 2018-01-29.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import SpriteKit

class Plane: GameObject {
    
    //constructor
    
    init()
    {
        super.init(imageString: "plane", InitialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func CheckBounds() {
        <#code#>
    }
    
    override func Start() {
        <#code#>
    }
    
    override func Update() {
        <#code#>
    }
    
    func TouchMove(newPos: CGPoint)
    {
        self.position = newPos
    }
    
}
