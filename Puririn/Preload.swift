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
    
    class func preloadGameTextures() -> Array<SKTexture> {
        
        var textures: Array<SKTexture> = []
        
        textures.append(SKTexture(imageNamed: "BackBG"))
        textures.append(SKTexture(imageNamed: "BackBG2"))
        textures.append(SKTexture(imageNamed: "BackBG3"))
        
        textures.append(SKTexture(imageNamed: "FrontBG"))
        textures.append(SKTexture(imageNamed: "FrontBG2"))
        textures.append(SKTexture(imageNamed: "FrontBG3"))
        
        textures.append(SKTexture(imageNamed: "WallBG"))
        textures.append(SKTexture(imageNamed: "WallBG2"))
        textures.append(SKTexture(imageNamed: "WallBG3"))
        
        textures.append(SKTexture(imageNamed: "Barrier"))
        textures.append(SKTexture(imageNamed: "puririn"))
        textures.append(SKTexture(imageNamed: "Star"))
        textures.append(SKTexture(imageNamed: "Vortex"))
        textures.append(SKTexture(imageNamed: "Window"))
        
        return textures
    }
   
}
