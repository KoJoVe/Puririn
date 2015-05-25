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
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([2,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,5,6,0,0])
            nextMatrix.append([11,5,5,8,0,4,0])
            nextMatrix.append([11,5,5,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,3,0,5,0,3,0])
            
            return nextMatrix
            
        }
        
        if(level==1) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,2,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,8,0,3,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,0,0,8,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
            
        }
        
        if(level==2) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,2,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,5,5,5,5,5,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,3,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,2,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([4,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,3,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==3) {
            
            var nextMatrix = [[0,0,0,0,0,0,5]]
            nextMatrix.append([0,2,0,4,0,5,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([4,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,3,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,5])
            
            return nextMatrix
            
        }
        
        if(level==4) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,2,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,5,5,5,5,5])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,0,3,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,3,0,4,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,4,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,4,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,2,5,0,0])
            
            return nextMatrix
            
        }
        
        if(level==5) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,5,5,5,0,0])
//            nextMatrix.append([0,3,0,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,2,5,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,5,0,4,0,5,0])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([0,0,4,5,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,5,0,4,0,5,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([5,5,0,0,0,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==6) {
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,5,0,4,0,5,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,4,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,4,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,3,0,5,0,0,5])
            nextMatrix.append([5,5,5,5,5,2,5])
            
            return nextMatrix
            
        }
        
        if(level==7) {
            
            var nextMatrix = [[5,3,5,0,0,0,0]]
            nextMatrix.append([5,0,5,0,0,0,0])
            nextMatrix.append([5,4,5,0,0,0,0])
            nextMatrix.append([5,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,2,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==8) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([5,5,5,5,5,5,5])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([5,5,0,4,0,5,5])
            nextMatrix.append([5,5,0,0,0,5,5])
            nextMatrix.append([5,0,0,5,4,0,5])
            nextMatrix.append([0,0,4,5,0,5,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,2,0])
            nextMatrix.append([0,3,0,5,5,5,5])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==9) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,2,0,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,5,0,4,0,5,0])
//            nextMatrix.append([5,0,0,5,0,0,5])
//            nextMatrix.append([0,0,4,5,0,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,5,0,5,0,5,0])
//            nextMatrix.append([0,5,0,4,0,5,0])
//            nextMatrix.append([0,0,0,3,0,0,0])
//            nextMatrix.append([5,5,0,0,0,5,5])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([4,5,5,5,5,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==10) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,3,0,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([5,0,0,5,0,0,5])
//            nextMatrix.append([0,0,5,5,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,2,0,0,0])
//            nextMatrix.append([5,5,0,0,0,5,5])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,0,0,0,0,2,5])
            nextMatrix.append([5,0,5,0,0,0,5])
            nextMatrix.append([5,0,0,4,0,0,5])
            nextMatrix.append([5,5,0,0,5,0,5])
            nextMatrix.append([5,0,5,0,0,0,5])
            nextMatrix.append([5,0,0,4,0,0,5])
            nextMatrix.append([5,4,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,3,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        
        if(level==11) {
            
//            var nextMatrix = [[5,5,5,5,5,5,5]]
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,5,2,5,0,5])
//            nextMatrix.append([5,5,0,0,0,5,5])
//            nextMatrix.append([5,0,0,5,0,0,5])
//            nextMatrix.append([5,0,5,5,5,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,5,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,3,0,5])
//            nextMatrix.append([5,5,0,0,0,5,5])
//            nextMatrix.append([5,5,5,5,5,5,5])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,5,3,5,0,0])
            nextMatrix.append([0,4,0,4,0,4,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([5,0,5,0,5,0,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==12) {
            
//            var nextMatrix = [[5,5,5,5,5,5,5]]
//            nextMatrix.append([5,0,0,0,0,2,5])
//            nextMatrix.append([5,0,5,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,5,0,0,5,0,5])
//            nextMatrix.append([5,0,5,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,5,0,0,5])
//            nextMatrix.append([5,0,0,5,0,0,5])
//            nextMatrix.append([5,0,3,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,5,5,5,5,5,5])
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,0,0,0,0,2,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,4,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,4,0,0,0,5])
            nextMatrix.append([0,0,5,5,5,5,5])
            nextMatrix.append([5,0,0,4,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,3,0,0,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        
        if(level==13) {
            
//            var nextMatrix = [[5,5,5,5,5,5,5]]
//            nextMatrix.append([5,0,0,0,0,2,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([0,0,5,5,5,5,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,3,0,0,5])
//            nextMatrix.append([5,5,5,5,5,5,5])
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,2,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,4,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,4,0,5])
            nextMatrix.append([5,0,0,3,0,0,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        
        if(level==14) {
            
//            var nextMatrix = [[5,5,5,5,5,5,5]]
//            nextMatrix.append([5,2,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,0])
//            nextMatrix.append([5,5,5,5,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,5,5,5,5,5])
//            nextMatrix.append([0,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,3,0,0,5])
//            nextMatrix.append([5,5,5,5,5,5,5])
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,2,0,5,0,3,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([4,0,0,5,0,0,4])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,4,0,5,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==15) {
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,5,0,0,0,5,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,4,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,4,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,5,5,5,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,4,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,3,0,5,0,2,5])
            
            return nextMatrix //REPETIDA
            
        }
        
        if(level==16) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,2,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,5,3,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([5,0,5,0,5,0,5])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,5,5,5,5,5,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==17) {
            
//            var nextMatrix = [[0,0,0,5,0,0,0]]
//            nextMatrix.append([0,2,0,5,0,3,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([0,0,0,0,0,0,0])

            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,2,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,3,0,0,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        
        if(level==18) {
            
            var nextMatrix = [[2,0,0,0,0,0,0]]
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,0,3,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==19) {
            
//            var nextMatrix = [[0,0,0,5,0,0,0]]
//            nextMatrix.append([0,5,0,0,0,2,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,0,0,5,4,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([3,0,4,5,0,0,0])
//            nextMatrix.append([0,5,0,4,0,5,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,2,0,5,0,5,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,5,0,4,0,5,0])
            nextMatrix.append([0,0,5,0,4,0,0])
            nextMatrix.append([0,5,0,5,0,3,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==20) {
            
            var nextMatrix = [[0,5,0,5,0,5,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,5,2,5,3,5,0])
            nextMatrix.append([0,5,4,5,0,5,0])
            nextMatrix.append([0,5,0,4,0,5,0])
            nextMatrix.append([0,0,0,5,4,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==21) {
            
//            var nextMatrix = [[0,0,0,5,0,0,0]]
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,2,0,0,0])
//            nextMatrix.append([0,5,5,5,5,5,0])
//            nextMatrix.append([0,0,0,3,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,5,4,0,4,5,0])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([5,5,0,4,0,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==22) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,3,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([5,5,5,5,5,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,5,0,0,0,0])
//            nextMatrix.append([0,5,0,0,5,0,0])
//            nextMatrix.append([0,5,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,2,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,2,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,5,5,5,5,5])
            nextMatrix.append([0,0,5,5,5,5,5])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==23) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,2,0,5,0,5,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,5,0,5,0,5,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,0,5,0,0,0,0])
//            nextMatrix.append([0,5,0,5,0,3,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[2,0,5,5,0,0,3]]
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([0,4,5,5,0,0,0])
            nextMatrix.append([0,0,5,5,4,0,0])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==24) {
            
//            var nextMatrix = [[0,0,0,0,0,0,2]]
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,0,5,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,3,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,0,5,0,0,0,5])
            nextMatrix.append([5,2,5,0,3,0,5])
            nextMatrix.append([5,0,5,0,0,0,5])
            nextMatrix.append([5,0,5,0,4,0,5])
            nextMatrix.append([5,4,5,5,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,5,0,4,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        
        if(level==25) {
            
//            var nextMatrix = [[2,0,5,0,0,0,0]]
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([5,5,0,0,5,0,0])
//            nextMatrix.append([0,0,5,0,0,5,0])
//            nextMatrix.append([0,0,5,0,0,0,5])
//            nextMatrix.append([0,0,0,5,0,0,5])
//            nextMatrix.append([0,0,0,5,0,0,5])
//            nextMatrix.append([0,0,5,0,0,0,5])
//            nextMatrix.append([0,0,5,0,0,5,0])
//            nextMatrix.append([5,5,0,0,5,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([3,0,5,0,0,0,0])
            
            var nextMatrix = [[0,5,0,2,0,0,0]]
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,0,4,0,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,5,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,5,5,5,5,5])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==26) {
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,0,4,0,0,0,2])
            nextMatrix.append([5,0,0,5,5,5,5])
            nextMatrix.append([5,0,0,5,5,5,5])
            nextMatrix.append([5,0,0,5,5,5,5])
            nextMatrix.append([5,0,4,5,5,5,5])
            nextMatrix.append([5,0,0,5,5,5,5])
            nextMatrix.append([5,0,0,5,5,5,5])
            nextMatrix.append([5,0,0,5,5,5,5])
            nextMatrix.append([5,0,4,5,5,5,5])
            nextMatrix.append([5,3,0,5,5,5,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        
        if(level==27) {
            
            var nextMatrix = [[0,0,0,0,0,0,2]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,4,0,0,0])
            nextMatrix.append([5,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([3,0,5,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==28) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,5,0,5,0,0])
//            nextMatrix.append([0,0,0,5,3,0,0])
//            nextMatrix.append([0,0,2,5,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,0,2,0,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,4,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==29) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,2,0,0,5,0,0])
//            nextMatrix.append([5,5,5,5,5,0,0])
//            nextMatrix.append([0,0,3,0,5,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[5,0,0,0,0,4,3]]
            nextMatrix.append([0,5,0,0,0,0,4])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([5,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,5,0,0])
            nextMatrix.append([0,0,5,0,0,5,0])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([0,5,0,0,5,0,0])
            nextMatrix.append([0,0,4,0,0,5,0])
            nextMatrix.append([0,0,0,5,0,0,5])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([2,0,0,0,0,5,0])
            
            return nextMatrix
            
        }
        
        if(level==30) {
            
//            var nextMatrix = [[0,0,0,2,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,5,5,5,5,5])
//            nextMatrix.append([0,0,5,5,5,5,5])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([5,5,5,5,5,0,0])
//            nextMatrix.append([5,5,5,5,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,3,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,3,0,0,4,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,5,0,0,5,0,0])
            nextMatrix.append([0,5,4,0,4,0,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,2,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix //REPETIDA
            
        }
        
        if(level==31) {
            
//            var nextMatrix = [[2,0,5,5,0,0,3]]
//            nextMatrix.append([0,0,5,5,0,0,0])
//            nextMatrix.append([0,0,5,5,0,0,0])
//            nextMatrix.append([0,0,5,5,0,4,0])
//            nextMatrix.append([0,4,5,5,0,0,0])
//            nextMatrix.append([0,0,5,5,0,0,0])
//            nextMatrix.append([0,0,5,5,5,0,0])
//            nextMatrix.append([0,0,5,5,5,0,0])
//            nextMatrix.append([0,0,5,5,5,0,0])
//            nextMatrix.append([0,0,4,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,5,0,0,0,2,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,0,5,4,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([3,0,4,5,0,0,0])
            nextMatrix.append([0,5,0,4,0,5,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==32) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([2,0,0,5,0,0,0])
//            nextMatrix.append([0,0,5,5,0,0,0])
//            nextMatrix.append([5,5,5,5,0,0,0])
//            nextMatrix.append([0,0,5,5,0,0,0])
//            nextMatrix.append([3,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,5,5,5,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,0,3,0,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,5,0,5,5,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,5,0,4,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==33) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,5,5,5,5,5,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,5,0,3,0,5,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,5,5,0,5,5,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,5,0,0,0])
//            nextMatrix.append([0,0,0,2,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([2,0,0,5,0,0,0])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([5,5,5,5,4,0,0])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([3,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==34) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,0,3,0])
//            nextMatrix.append([0,5,0,0,0,0,0])
//            nextMatrix.append([0,5,5,5,5,0,0])
//            nextMatrix.append([0,5,0,2,5,0,0])
//            nextMatrix.append([0,5,0,0,5,5,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,5,5,0,0,5,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,0,4,0,5])
            nextMatrix.append([0,0,0,5,0,0,5])
            nextMatrix.append([0,4,0,5,0,3,5])
            nextMatrix.append([0,0,0,0,5,5,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,2,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==35) {
            
//            var nextMatrix = [[5,5,5,5,5,5,5]]
//            nextMatrix.append([5,0,5,0,0,0,5])
//            nextMatrix.append([5,2,5,0,3,0,5])
//            nextMatrix.append([5,0,5,0,0,0,5])
//            nextMatrix.append([5,0,5,0,0,0,5])
//            nextMatrix.append([5,0,5,5,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,5,0,0,0,5])
//            nextMatrix.append([5,0,0,5,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([5,5,5,5,5,5,5])
            
            var nextMatrix = [[0,0,0,0,0,0,2]]
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,3,0,4,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==36) {
            
//            var nextMatrix = [[0,5,0,2,0,0,0]]
//            nextMatrix.append([0,5,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,5,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,5,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,5,5,5,5,5])
//            nextMatrix.append([0,0,0,3,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,5,0,2,0,0,0]]
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,4,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,5,5,5,5,5])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==37) {
            
//            var nextMatrix = [[0,0,0,0,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,5,0,2,0,5,0])
//            nextMatrix.append([0,5,0,0,0,5,0])
//            nextMatrix.append([0,0,5,5,5,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,3,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,4,0,0])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,0,5,3,0,0])
            nextMatrix.append([0,0,2,5,0,0,0])

            
            return nextMatrix //REPETIDA
            
        }
        
        if(level==38) {
            
//            var nextMatrix = [[5,0,0,0,0,0,3]]
//            nextMatrix.append([0,5,0,0,0,0,0])
//            nextMatrix.append([0,0,5,0,0,0,0])
//            nextMatrix.append([5,0,0,0,0,0,0])
//            nextMatrix.append([0,5,0,0,5,0,0])
//            nextMatrix.append([0,0,5,0,0,5,0])
//            nextMatrix.append([5,0,0,0,0,0,5])
//            nextMatrix.append([0,5,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,0,5,0])
//            nextMatrix.append([0,0,0,5,0,0,5])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([2,0,0,0,0,5,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,4,0,5,0,0])
            nextMatrix.append([0,2,0,0,5,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,0,3,0,5,0,0])
            nextMatrix.append([0,0,0,0,5,4,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,4,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==39) {
            
//            var nextMatrix = [[0,0,0,5,0,0,0]]
//            nextMatrix.append([0,0,0,0,0,0,5])
//            nextMatrix.append([0,0,0,5,0,0,5])
//            nextMatrix.append([0,0,0,5,0,3,5])
//            nextMatrix.append([0,0,0,0,5,5,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,0,5,0,0])
//            nextMatrix.append([0,0,0,5,5,0,0])
//            nextMatrix.append([0,0,0,0,0,2,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
//            nextMatrix.append([0,0,0,0,0,0,0])
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,4,0,3,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,5,5,5,0,0])
            nextMatrix.append([0,5,0,2,5,0,0])
            nextMatrix.append([0,5,0,0,5,5,0])
            nextMatrix.append([0,5,0,4,0,5,0])
            nextMatrix.append([0,5,5,0,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,5,0,0])
            
            return nextMatrix
            
        }
        
        if(level==40) {

        }
        if(level==41) {
            
        }
        if(level==42) {
            
        }
        if(level==43) {
            
        }
        if(level==44) {
            
        }
        if(level==45) {
            
        }
        if(level==46) {
            
        }
        if(level==47) {
            
        }
        if(level==48) {
            
        }
        if(level==49) {
            
        }
        if(level==50) {
            
        }
        if(level==51) {
            
        }
        if(level==52) {
            
        }
        if(level==53) {
            
        }
        if(level==54) {
            
        }
        if(level==55) {
            
        }
        if(level==56) {
            
        }
        if(level==57) {
            
        }
        if(level==58) {
            
        }
        if(level==59) {
            
        }
        if(level==60) {
            
        }
        if(level==61) {
            
        }
        if(level==62) {
            
        }
        if(level==63) {
            
        }
        if(level==64) {
            
        }
        if(level==65) {
            
        }
        if(level==66) {
            
        }
        if(level==67) {
            //Rock
        }
        if(level==68) {
            
        }
        if(level==69) {
            
        }
        if(level==70) {
            
        }
        if(level==71) {
            
        }
        if(level==72) {
            
        }
        if(level==73) {
            
        }
        if(level==74) {
            
        }
        if(level==75) {
            
        }
        if(level==76) {
            
        }
        if(level==77) {
            
        }
        if(level==78) {
            
        }
        if(level==79) {
            
        }
        if(level==80) {
            
        }
        if(level==81) {
            
        }
        if(level==82) {
            
        }
        if(level==83) {
            
        }
        if(level==84) {
            
        }
        if(level==85) {
            
        }
        if(level==86) {
            
        }
        if(level==87) {
            
        }
        if(level==88) {
            
        }
        if(level==89) {
            
        }
        if(level==90) {
            
        }
        if(level==91) {
            
        }
        if(level==92) {
            
        }
        if(level==93) {
            
        }
        if(level==94) {
            ///Rock
        }
        if(level==95) {
            
        }
        if(level==96) {
            
        }
        if(level==97) {
            
        }
        if(level==98) {
            
        }
        if(level==99) {
            
        }
        if(level==100) {
            
        }
        if(level==101) {
            
        }
        if(level==102) {
            
        }
        if(level==103) {
            
        }
        if(level==104) {
            
        }
        if(level==105) {
            
        }
        if(level==106) {
            
        }
        if(level==107) {
            
        }
        if(level==108) {
            
        }
        if(level==109) {
            
        }
        if(level==110) {
            
        }
        if(level==111) {
            
        }
        if(level==112) {
        
        }
        if(level==113) {
            
        }
        if(level==114) {
            
        }
        if(level==115) {
            
        }
        if(level==116) {
            
        }
        if(level==117) {
            
        }
        if(level==118) {
            
        }
        if(level==119) {
            
        }
        if(level==120) {
            
        }
        if(level==121) {
            
        }
        if(level==122) {
            //Lol
        }
        if(level==123) {
            
        }
        if(level==124) {
            
        }
        if(level==125) {
            
        }
        if(level==126) {
            
        }
        if(level==127) {
            
        }
        if(level==128) {
            
        }
        if(level==129) {
            
        }
        if(level==130) {
            
        }
        if(level==131) {
            
        }
        if(level==132) {
            
        }
        if(level==133) {
            
        }
        if(level==134) {
            
        }
        if(level==135) {
            
        }
        if(level==136) {
            
        }
        if(level==137) {
            
        }
        if(level==138) {
            
        }
        if(level==139) {
            
        }
        if(level==140) {
            
        }
        if(level==141) {
            
        }
        if(level==142) {
            
        }
        if(level==143) {
            
        }
        if(level==144) {
            
        }
        if(level==145) {
            
        }
        if(level==146) {
            
        }
        if(level==147) {
            
        }
        if(level==148) {
            
        }
        if(level==149) {
            
        }
        
        var nextMatrix = [[0,0,0,0,0,0,0]]
        nextMatrix.append([0,0,0,2,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([7,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,4])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,6])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([4,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,3,0,0,0])
        nextMatrix.append([0,4,0,0,0,0,0])
        
        return nextMatrix
       
    }
    
}
