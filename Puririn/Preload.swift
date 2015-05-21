//
//  Preload.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 20/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class Preload: NSObject {
    
    class func preloadMenuTextures() -> (array: Array<SKTexture>, dictionary: [String: SKTexture]) {
        
        var textures: Array<SKTexture> = []
        var texturesNames = [String: SKTexture]()
        
        textures.append(SKTexture(imageNamed: "Galaxy"))
        texturesNames["Galaxy"] = textures[0]
        textures.append(SKTexture(imageNamed: "Galaxy2"))
        texturesNames["Galaxy2"] = textures[1]
        textures.append(SKTexture(imageNamed: "Galaxy3"))
        texturesNames["Galaxy3"] = textures[2]
        
        textures.append(SKTexture(imageNamed: "Space"))
        texturesNames["Space"] = textures[3]
        textures.append(SKTexture(imageNamed: "Space2"))
        texturesNames["Space2"] = textures[4]
        textures.append(SKTexture(imageNamed: "Space3"))
        texturesNames["Space3"] = textures[5]
        
        textures.append(SKTexture(imageNamed: "MilkyWay"))
        texturesNames["MilkyWay"] = textures[6]
        textures.append(SKTexture(imageNamed: "SelectGalaxy"))
        texturesNames["SelectGalaxy"] = textures[7]
        textures.append(SKTexture(imageNamed: "LostGalaxy"))
        texturesNames["LostGalaxy"] = textures[8]
        textures.append(SKTexture(imageNamed: "Puronmedra"))
        texturesNames["Puronmedra"] = textures[9]
        
        textures.append(SKTexture(imageNamed: "BallOk"))
        texturesNames["BallOk"] = textures[10]
        textures.append(SKTexture(imageNamed: "Wat"))
        texturesNames["Wat"] = textures[11]
        
        return (textures,texturesNames)
    }
   
}
