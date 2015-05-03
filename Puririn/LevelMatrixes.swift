//
//  LevelMatrixes.swift
//  Puririn
//
//  Created by Victor Souza on 5/2/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import Foundation

class LevelMatrixes {
    
    class func getMatrixLevel(level: Int) -> Array<Array<Int>> {
        
        if(level==0) {
            
            var nextMatrix = [[2,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,3,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==1) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,2,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,3,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        return []
       
    }
    
}
