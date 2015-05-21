//
//  Preload.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 20/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class Preload: NSObject {
    
    class func preloadMenuTextures() -> Array<SKTexture> {
        
        var textures: Array<SKTexture> = []
        var texturesNames = [String: SKTexture]()
        
        textures.append(SKTexture(imageNamed: "Galaxy"))
        textures.append(SKTexture(imageNamed: "Galaxy2"))
        textures.append(SKTexture(imageNamed: "Galaxy3"))
        
        textures.append(SKTexture(imageNamed: "Space"))
        textures.append(SKTexture(imageNamed: "Space2"))
        textures.append(SKTexture(imageNamed: "Space3"))
        
        textures.append(SKTexture(imageNamed: "MilkyWay"))
        textures.append(SKTexture(imageNamed: "SelectGalaxy"))
        textures.append(SKTexture(imageNamed: "LostGalaxy"))
        textures.append(SKTexture(imageNamed: "Puronmedra"))
        
        textures.append(SKTexture(imageNamed: "BallOk"))
        textures.append(SKTexture(imageNamed: "Wat"))

        return textures
    }
   
}
