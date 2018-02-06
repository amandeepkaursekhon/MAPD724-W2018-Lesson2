//
//  Distance.swift
//  MAPD724-W2018-Lesson2
//
//  Created by Amandeep Sekhon on 2018-02-05.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import CoreGraphics
import  SpriteKit

public extension CGPoint
{
    public static func Distance(P1:CGPoint, P2:CGPoint)  -> CGFloat
{
    return sqrt(pow((P2.x - P1.x), 2) + pow((P2.y - P1.y), 2))
    }
    }
