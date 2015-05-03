//
//  LevelMatrixes.swift
//  Puririn
//
//  Created by Victor Souza on 5/2/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import Foundation

class LevelMatrixes {
    
    func matrixes(level: String) -> Array<Array<Int>> {
        
        var levelMatrix = [[2,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0]]

        if level == "one" {
            
            levelMatrix = [[2,2,2,2,2,2,2],
                            [2,0,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2],
                            [2,2,2,2,2,2,2]]
            
            return levelMatrix
        }
        
        return levelMatrix
    }
    
}
