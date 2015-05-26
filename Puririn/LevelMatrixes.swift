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
            
            var nextMatrix = [[3,0,0,0,0,0,0]]
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([4,11,5,5,5,0,0])
            nextMatrix.append([0,11,0,0,0,0,0])
            nextMatrix.append([0,11,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,10,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,11])
            nextMatrix.append([0,0,0,0,0,11,2])
            return nextMatrix

        }
        if(level==41) {
            
            var nextMatrix = [[0,0,0,3,4,0,11]]
            nextMatrix.append([0,0,0,0,0,0,4])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,5,0])
            nextMatrix.append([0,5,5,11,5,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,4])
            nextMatrix.append([0,0,0,0,0,0,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([2,0,0,0,0,0,0])
            return nextMatrix

            
        }
        if(level==42) {
            
            var nextMatrix = [[0,0,2,0,0,0,0]]
            nextMatrix.append([5,5,5,0,0,0,4])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([11,11,0,0,5,0,0])
            nextMatrix.append([3,11,0,0,0,0,0])
            return nextMatrix
            
        }
        if(level==43) {
            
            var nextMatrix = [[5,0,0,11,0,0,5]]
            nextMatrix.append([4,0,0,0,0,0,4])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([0,0,4,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([3,0,0,11,0,0,2])
            return nextMatrix

            
        }
        if(level==44) {
            
            var nextMatrix = [[5,0,0,0,0,0,2]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,11])
            nextMatrix.append([0,0,0,0,0,0,11])
            nextMatrix.append([0,0,0,0,0,0,11])
            nextMatrix.append([11,11,5,11,5,11,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,4,0,4,0,0,3])
            return nextMatrix
            
        }
        if(level==45) {
            
            var nextMatrix = [[2,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,4])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,4])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,4])
            nextMatrix.append([3,0,0,0,0,0,0])
            return nextMatrix
            
        }
        if(level==46) {
            
            var nextMatrix = [[2,0,0,0,5,0,3]]
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([5,5,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,5])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([4,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,4])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            return nextMatrix
            
        }
        if(level==47) {
            
            var nextMatrix = [[2,11,0,11,0,0,5]]
            nextMatrix.append([5,11,0,11,0,0,0])
            nextMatrix.append([0,11,0,11,0,0,0])
            nextMatrix.append([4,11,0,11,0,0,0])
            nextMatrix.append([0,11,0,5,0,0,0])
            nextMatrix.append([0,11,0,5,5,5,5])
            nextMatrix.append([4,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,0,0,0,0,0,3])
            return nextMatrix
            
        }
        if(level==48) {
            
            var nextMatrix = [[0,0,0,0,0,0,2]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,5,5,5,0,0])
            nextMatrix.append([0,5,3,4,5,0,0])
            nextMatrix.append([0,5,11,11,5,0,4])
            nextMatrix.append([0,5,0,4,0,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,5])
            return nextMatrix
            
        }
        if(level==49) {
            
            var nextMatrix = [[0,0,0,4,0,0,0]]
            nextMatrix.append([0,0,11,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,11,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([11,11,5,5,5,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            return nextMatrix
            
        }
        if(level==50) {
            
            var nextMatrix = [[0,0,11,4,11,0,0]]
            nextMatrix.append([0,0,0,11,0,4,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,4])
            nextMatrix.append([2,0,0,5,0,0,3])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            return nextMatrix

            
        }
        if(level==51) {
            
            var nextMatrix = [[5,2,0,0,0,11,0]]
            nextMatrix.append([0,5,0,0,11,0,0])
            nextMatrix.append([0,0,5,5,0,0,4])
            nextMatrix.append([0,0,5,11,0,0,0])
            nextMatrix.append([0,5,0,0,11,0,0])
            nextMatrix.append([5,0,4,0,0,5,0])
            nextMatrix.append([0,11,0,0,0,0,5])
            nextMatrix.append([0,0,11,0,0,5,0])
            nextMatrix.append([0,0,0,5,5,0,0])
            nextMatrix.append([0,0,0,11,5,0,0])
            nextMatrix.append([0,0,11,4,0,5,0])
            nextMatrix.append([0,5,0,3,0,0,5])
            return nextMatrix

            
        }
        if(level==52) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([5,0,5,0,11,0,11])
            nextMatrix.append([5,0,0,3,0,0,11])
            nextMatrix.append([5,0,5,0,11,0,11])
            nextMatrix.append([0,5,0,5,4,5,4])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,2,0,0,0,4,5])
            nextMatrix.append([0,0,0,11,0,0,0])
            return nextMatrix
            
        }
        if(level==53) {
            
            var nextMatrix = [[0,0,0,11,0,0,2]]
            nextMatrix.append([5,4,0,0,11,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,11,0,0,5,5])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,0,11,0,0])
            nextMatrix.append([0,0,5,5,0,11,4])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,5,4,0])
            nextMatrix.append([0,0,0,0,0,11,11])
            nextMatrix.append([5,0,0,0,0,3,5])
            return nextMatrix
            
        }
        if(level==54) {
            
            var nextMatrix = [[3,4,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,11,4])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([4,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,5,5,0])
            nextMatrix.append([0,0,0,0,2,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
            
        }
        if(level==55) {
            
            var nextMatrix = [[0,2,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,5,3,5,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,4,0,0,0,4,5])
            return nextMatrix
            
        }
        if(level==56) {
            
            var nextMatrix = [[5,0,0,0,0,0,0]]
            nextMatrix.append([5,0,0,0,0,4,0])
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([5,4,0,5,0,0,0])
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([5,4,0,11,0,0,0])
            nextMatrix.append([5,0,0,11,0,0,0])
            nextMatrix.append([5,0,2,5,0,0,3])
            return nextMatrix

            
        }
        if(level==57) {
            
            var nextMatrix = [[0,0,0,2,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([11,0,0,0,0,0,11])
            nextMatrix.append([0,11,0,5,0,11,0])
            nextMatrix.append([4,0,5,3,5,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,11,0,4,0,0])
            nextMatrix.append([0,11,0,0,0,0,0])
            nextMatrix.append([11,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            return nextMatrix
            
        }
        if(level==58) {
            
            var nextMatrix = [[3,5,0,11,0,5,3]]
            nextMatrix.append([5,5,0,0,0,5,5])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,11,11,0,11,11,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([4,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,5,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,0,0,0,11,11])
            nextMatrix.append([3,5,0,5,0,11,3])
            return nextMatrix

            
        }
        if(level==59) {
            
            var nextMatrix = [[0,0,0,0,0,0,5]]
            nextMatrix.append([3,4,0,0,0,0,4])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,4])
            nextMatrix.append([5,5,5,5,5,11,11])
            nextMatrix.append([2,11,11,11,11,11,11])
            return nextMatrix
            
        }
        if(level==60) {
            
            var nextMatrix = [[5,0,0,5,0,0,0]]
            nextMatrix.append([5,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([4,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,4])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([0,0,3,5,2,0,0])
            return nextMatrix

            
        }
        if(level==61) {
            
            var nextMatrix = [[0,0,11,0,11,0,0]]
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([4,0,5,0,5,0,4])
            nextMatrix.append([3,0,0,0,0,0,0])
            nextMatrix.append([5,0,5,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([5,0,11,0,0,0,0])
            nextMatrix.append([5,4,0,0,5,0,5])
            nextMatrix.append([5,0,0,0,0,5,0])
            nextMatrix.append([5,0,11,0,11,0,5])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([5,0,5,0,0,0,2])
            return nextMatrix

            
        }
        if(level==62) {
            
            var nextMatrix = [[0,0,0,5,3,5,0]]
            nextMatrix.append([0,0,0,5,5,5,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([4,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,4])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,4,5,0,0,0])
            nextMatrix.append([5,0,3,5,2,0,5])
            return nextMatrix
            
        }
        if(level==63) {
            
            var nextMatrix = [[2,0,5,5,5,5,5]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([11,11,11,0,5,5,5])
            nextMatrix.append([4,0,0,0,0,0,0])
            nextMatrix.append([5,5,0,11,0,5,5])
            nextMatrix.append([5,0,0,11,0,0,5])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([5,3,0,11,0,5,5])
            nextMatrix.append([5,5,0,11,0,5,5])
            nextMatrix.append([5,5,11,11,11,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix

        }
        if(level==64) {
            
            var nextMatrix = [[11,0,4,0,0,0,11]]
            nextMatrix.append([0,11,0,0,0,11,0])
            nextMatrix.append([0,0,11,0,5,0,0])
            nextMatrix.append([0,0,4,3,0,0,0])
            nextMatrix.append([0,0,5,11,11,0,0])
            nextMatrix.append([0,5,0,5,4,11,0])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([2,0,0,11,0,0,5])
            return nextMatrix

            
        }
        if(level==65) {
            
            var nextMatrix = [[0,5,0,0,0,5,0]]
            nextMatrix.append([5,0,11,0,11,0,5])
            nextMatrix.append([5,5,11,4,11,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([3,4,0,5,0,0,0])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,4,5])
            nextMatrix.append([5,5,11,11,5,5,5])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,11,11,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            return nextMatrix
            
        }
        if(level==66) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([5,0,5,0,5,3,5])
            nextMatrix.append([5,0,5,0,11,4,5])
            nextMatrix.append([5,0,5,0,11,0,5])
            nextMatrix.append([5,5,5,0,11,11,5])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,11,0,11,0,0])
            nextMatrix.append([0,0,11,0,5,0,0])
            nextMatrix.append([0,4,11,0,5,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([2,0,0,0,0,0,0])
            return nextMatrix
            
        }
        if(level==67) {
            //Rock
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([6,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,7])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==68) {
            
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([2,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,8,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,3,0])
            
            return nextMatrix
            
        }
        if(level==69) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([2,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,5,7,0,0])
            nextMatrix.append([11,5,5,5,0,4,0])
            nextMatrix.append([11,5,5,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,3,0])
            
            return nextMatrix
            
        }
        if(level==70) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,2,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([6,0,0,8,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,3,0])
            
            return nextMatrix

            
        }
        if(level==71) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([2,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([9,0,0,0,0,0,0])
            nextMatrix.append([4,0,0,8,0,0,0])
            nextMatrix.append([11,5,5,5,11,11,5])
            nextMatrix.append([0,4,0,11,0,0,0])
            nextMatrix.append([0,3,0,11,0,0,0])
            
            return nextMatrix
            
        }
        if(level==72) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([2,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,9,0,0,0])
            nextMatrix.append([6,0,4,0,0,0,7])
            nextMatrix.append([0,0,0,0,0,7,0])
            nextMatrix.append([6,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,8,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,3,0])
            
            return nextMatrix

            
        }
        if(level==73) {
            
            var nextMatrix = [[2,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,3,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([6,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==74) {
            
            var nextMatrix = [[0,2,0,11,0,0,0]]
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,4,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,4,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,8,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,3,0])
            
            return nextMatrix
            
        }
        if(level==75) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,3,0])
            nextMatrix.append([2,0,0,5,0,0,4])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([6,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,11,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([5,0,0,8,0,0,0])
            
            return nextMatrix
            
        }
        if(level==76) {
            
            var nextMatrix = [[0,2,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([6,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,7])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,0,3])
            
            return nextMatrix

            
        }
        if(level==77) {
            
            var nextMatrix = [[2,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,3])
            nextMatrix.append([0,4,0,11,0,4,0])
            nextMatrix.append([0,0,0,0,0,5,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([6,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([11,11,11,11,11,11,11])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            
            return nextMatrix
            
        }
        if(level==78) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,2,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,3])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([6,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,8,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            
            return nextMatrix
            
        }
        if(level==79) {
            
            var nextMatrix = [[2,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([5,5,11,11,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,3,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([6,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix

            
        }
        if(level==80) {
            
            var nextMatrix = [[0,2,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,3])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,9,0,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([6,0,0,11,0,0,7])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,8,5,5,5])
            nextMatrix.append([0,3,0,5,0,3,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            
            return nextMatrix
            
        }
        if(level==81) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([2,0,0,5,0,0,3])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([6,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,7,0,0])
            nextMatrix.append([0,6,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,7])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==82) {
            
            var nextMatrix = [[0,0,0,2,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,0,5,0,0,0,0])
            nextMatrix.append([11,11,11,6,0,0,5])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,11,0,7,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,4,0,0])
            nextMatrix.append([0,0,0,0,0,3,0])
            
            return nextMatrix
            
        }
        if(level==83) {
            
            var nextMatrix = [[2,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,4])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([6,0,5,0,0,0,0])
            nextMatrix.append([0,0,5,11,11,11,5])
            nextMatrix.append([5,0,7,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,0,0,0,0,0,3])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==84) {
            
            var nextMatrix = [[0,2,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,6,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,7,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([5,5,5,6,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,3,0,0,4,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==85) {
            
            var nextMatrix = [[2,0,0,0,5,0,3]]
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([6,0,0,0,5,0,0])
            nextMatrix.append([0,0,0,7,5,0,4])
            nextMatrix.append([0,0,0,4,11,0,0])
            nextMatrix.append([5,6,0,0,11,0,4])
            nextMatrix.append([5,0,0,0,7,11,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix

            
        }
        if(level==86) {
            
            var nextMatrix = [[2,0,0,5,0,3,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([6,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,4,0,5,0,0,7])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([6,0,0,11,0,4,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            
            return nextMatrix
            
        }
        if(level==87) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,2,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([6,0,0,11,5,5,5])
            nextMatrix.append([0,0,7,11,5,5,5])
            nextMatrix.append([0,0,11,5,0,0,0])
            nextMatrix.append([0,0,8,0,0,0,0])
            nextMatrix.append([4,0,0,0,4,3,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,8,0,0,0])
            
            return nextMatrix
            
        }
        if(level==88) {
            
            var nextMatrix = [[0,0,0,5,5,0,0]]
            nextMatrix.append([0,4,0,3,5,0,0])
            nextMatrix.append([0,0,0,5,5,5,11])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([11,5,5,8,0,0,0])
            nextMatrix.append([11,5,5,5,6,0,0])
            nextMatrix.append([11,5,5,9,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,2,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,0,0,0])
            
            return nextMatrix
            
        }
        if(level==89) {
            
            var nextMatrix = [[0,2,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([6,0,0,5,0,4,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([6,0,0,5,0,0,0])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([5,5,5,5,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([3,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==90) {
            
            var nextMatrix = [[2,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,11,11,5,0,8])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,0,4,0,6,5])
            nextMatrix.append([0,0,11,0,0,0,0])
            nextMatrix.append([0,0,11,0,4,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([3,4,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==91) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,5,11])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([8,0,0,0,0,0,8])
            nextMatrix.append([5,0,4,0,4,0,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            
            return nextMatrix
            
        }
        if(level==92) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([6,0,0,5,0,0,7])
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,3,0])
            nextMatrix.append([0,2,0,5,0,0,4])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([6,0,0,11,0,0,7])
            nextMatrix.append([0,0,4,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            
            return nextMatrix
            
        }
        if(level==93) {
            
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
        if(level==94) {
            ///Rock
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,10,4,0,0])
            nextMatrix.append([0,0,10,3,10,0,0])
            nextMatrix.append([0,0,10,10,10,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix

        }
        if(level==95) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,10,0,10,0,10,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,10,0,10,0,10,0])
            nextMatrix.append([0,0,4,0,4,0,0])
            nextMatrix.append([0,10,0,10,0,10,0])
            nextMatrix.append([0,0,2,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==96) {
            var nextMatrix = [[0,0,8,10,0,0,0]]
            nextMatrix.append([0,4,0,10,0,2,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,4,5,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([3,0,5,0,0,0,0])
            nextMatrix.append([5,5,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==97) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,2,0,4,0])
            nextMatrix.append([0,0,10,10,10,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==98) {
            var nextMatrix = [[0,0,0,10,0,0,0]]
            nextMatrix.append([0,10,4,3,0,10,0])
            nextMatrix.append([10,4,0,0,0,0,10])
            nextMatrix.append([0,5,10,10,10,5,0])
            nextMatrix.append([6,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,7])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,2,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==99) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,10,0,2,0,10,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([5,5,11,0,11,5,5])
            nextMatrix.append([0,0,4,0,8,0,0])
            nextMatrix.append([5,10,0,11,0,10,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,10,4,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==100) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([5,5,5,3,5,5,5])
            nextMatrix.append([0,0,7,10,6,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([11,0,0,6,0,0,11])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,2,0,10,0,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix

        }
        if(level==101) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,10,0,0,0,0,0])
            nextMatrix.append([10,2,10,0,5,0,0])
            nextMatrix.append([10,10,10,0,0,0,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([5,5,5,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,3,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==102) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,4,0,2,0,4,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([11,11,10,10,10,5,5])
            nextMatrix.append([0,4,10,10,10,0,0])
            nextMatrix.append([0,0,10,3,10,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==103) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,10,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,10,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([5,11,5,5,5,11,5])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([10,4,0,11,0,4,10])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([5,11,11,5,0,0,0])
            nextMatrix.append([10,10,10,5,0,2,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            return nextMatrix

        }
        if(level==104) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([5,5,5,5,5,5,5])
            nextMatrix.append([6,0,0,10,0,0,7])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,4,0,10,0,4,0])
            nextMatrix.append([0,0,0,9,0,0,0])
            nextMatrix.append([0,2,0,10,0,4,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,4,0,5,0,3,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            return nextMatrix
        }
        if(level==105) {
            var nextMatrix = [[10,0,0,0,0,0,10]]
            nextMatrix.append([0,10,0,0,0,10,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,10,4,10,0,0])
            nextMatrix.append([0,10,0,0,0,10,0])
            nextMatrix.append([10,0,0,2,0,0,10])
            nextMatrix.append([0,10,0,4,0,10,0])
            nextMatrix.append([0,0,10,10,10,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==106) {
            var nextMatrix = [[0,9,0,9,0,9,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,0,4,0,4,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([2,10,5,10,5,10,3])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix

        }
        if(level==107) {
            var nextMatrix = [[0,0,0,2,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,10,0,4,0,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,5,11,10,11,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,0,4,7,5,5])
            nextMatrix.append([0,0,0,3,0,0,0])
            return nextMatrix
        }
        if(level==108) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,10,10,10,0,0])
            nextMatrix.append([0,0,10,0,0,3,0])
            nextMatrix.append([0,0,4,0,10,0,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,10,0,4,0,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,4,0,10,0,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,10,2,10,0,0])
            return nextMatrix
        }
        if(level==109) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,10,0,5,0,10,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,11,0,10,0,11,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,10,0,5,0,0,0])
            nextMatrix.append([0,0,4,0,4,0,0])
            nextMatrix.append([0,11,0,10,0,11,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,10,0,11,0,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==110) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,5,5,5,5,5,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,10,0,10,0,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,11,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,10,4,10,4,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==111) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,10,0,0,0,10,0])
            nextMatrix.append([0,0,10,2,10,0,0])
            nextMatrix.append([0,10,0,10,0,10,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,4,10,4,0,0])
            nextMatrix.append([0,10,0,4,0,10,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix

        }
        if(level==112) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,10,0,0,0,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,10,0,5,4,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,10,0,0,2,10,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,10,4,0,0,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,10,0,0,4,10,0])
            nextMatrix.append([0,10,0,5,0,10,0])
            nextMatrix.append([0,0,3,0,0,0,0])
            return nextMatrix
        }
        if(level==113) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([6,4,0,4,0,4,7])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,10,0,5,0,10,0])
            nextMatrix.append([0,10,0,2,0,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,10,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==114) {
            var nextMatrix = [[3,0,0,4,0,0,0]]
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,4,0,10,0,0,7])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([5,10,11,10,0,10,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,10,0,10,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,2])
            return nextMatrix

        }
        if(level==115) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([10,10,10,10,10,10,10])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([10,10,10,5,10,10,10])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([10,5,10,11,10,10,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([10,0,10,11,0,10,10])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([10,11,11,10,11,11,10])
            nextMatrix.append([0,0,0,5,4,0,0])
            nextMatrix.append([0,2,0,5,0,3,0])
            return nextMatrix
        }
        if(level==116) {
            
            var nextMatrix = [[0,0,0,0,0,2,0]]
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,10,6,0,0,10,0])
            nextMatrix.append([0,0,0,0,0,9,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,8,0,0,0,0,0])
            nextMatrix.append([0,10,0,0,7,10,0])
            nextMatrix.append([0,0,4,0,4,0,0])
            nextMatrix.append([0,10,0,0,7,10,0])
            nextMatrix.append([0,9,0,0,0,0,0])
            nextMatrix.append([0,0,0,3,0,8,0])
            nextMatrix.append([0,10,6,0,0,10,0])
            return nextMatrix

        }
        if(level==117) {
            var nextMatrix = [[0,5,5,5,5,0,0]]
            nextMatrix.append([0,5,0,3,0,5,0])
            nextMatrix.append([0,5,0,11,0,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,10,4,10,0,0])
            nextMatrix.append([0,5,0,0,0,0,4])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,10,0,4,0,10,0])
            nextMatrix.append([0,10,0,0,0,10,0])
            nextMatrix.append([0,10,0,2,0,10,0])
            nextMatrix.append([0,10,0,0,0,10,0])
            nextMatrix.append([0,0,10,6,5,0,0])
            return nextMatrix
        }
        if(level==118) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,2,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,10,0,10])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([0,5,0,0,0,4,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,4,0])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([0,0,0,0,10,0,10])
            nextMatrix.append([0,3,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            return nextMatrix
        }
        if(level==119) {
            var nextMatrix = [[10,0,0,0,0,0,0]]
            nextMatrix.append([10,0,0,0,0,0,0])
            nextMatrix.append([5,0,0,0,0,2,0])
            nextMatrix.append([0,0,10,0,0,0,0])
            nextMatrix.append([0,0,10,0,4,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,0,0,10,0,0])
            nextMatrix.append([0,0,0,0,10,0,4])
            nextMatrix.append([0,0,0,0,5,0,0])
            nextMatrix.append([0,4,0,0,0,0,10])
            nextMatrix.append([0,0,0,0,0,0,10])
            nextMatrix.append([5,5,5,3,5,5,5])
            return nextMatrix
        }
        if(level==120) {
            var nextMatrix = [[0,0,0,0,0,0,3]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([10,0,10,10,10,0,4])
            nextMatrix.append([10,0,10,4,10,0,0])
            nextMatrix.append([10,0,10,10,10,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,10,10,10,0,10])
            nextMatrix.append([0,0,10,4,10,0,10])
            nextMatrix.append([11,0,10,10,10,0,10])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([2,0,0,0,0,0,0])
            return nextMatrix

        }
        if(level==121) {
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,5,0,2,0,5,0])
            nextMatrix.append([5,9,0,0,0,9,5])
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,4,0])
            nextMatrix.append([5,10,5,8,11,10,5])
            nextMatrix.append([0,0,10,0,10,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            return nextMatrix
        }
        if(level==122) {
            //Lol
            
            var nextMatrix =   [[5,0,0,0,0,0,5]]
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,6,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,4,12,12,12,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,7,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([5,0,0,0,0,0,5])
            
            return nextMatrix
            
        }
        if(level==123) {
            
            var nextMatrix =   [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,6,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,12,2,12,0,0])
            nextMatrix.append([0,0,5,0,0,5,0])
            nextMatrix.append([0,0,0,0,0,6,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,11,11])
            nextMatrix.append([0,0,0,0,4,11,3])
            
            return nextMatrix
            
            
        }
        if(level==124) {
            
            var nextMatrix =   [[7,0,0,5,0,0,0]]
            nextMatrix.append([0,4,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,7,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,11,2,11,0,0])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,0,5,0,0,4])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==125) {
            
            var nextMatrix =   [[5,0,11,3,11,0,5]]
            nextMatrix.append([5,4,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([10,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,5,0,5])
            nextMatrix.append([5,0,0,0,0,0,7])
            nextMatrix.append([5,0,4,0,0,0,5])
            nextMatrix.append([5,6,0,0,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,4,0,0,5])
            nextMatrix.append([5,5,0,2,0,5,5])
            
            return nextMatrix
            
        }
        if(level==126) {
            
            var nextMatrix =   [[0,0,0,0,0,0,0]]
            nextMatrix.append([4,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,7])
            nextMatrix.append([0,0,7,0,0,0,4])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,5,11,0,0])
            nextMatrix.append([0,0,0,3,12,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,12,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,4,0,5])
            
            return nextMatrix
            
        }
        if(level==127) {

            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,5,0,11,0,5,5])
            nextMatrix.append([5,4,0,11,0,0,5])
            nextMatrix.append([5,0,0,11,0,4,5])
            nextMatrix.append([5,0,0,11,0,0,5])
            nextMatrix.append([5,0,4,5,0,0,5])
            nextMatrix.append([12,0,3,5,0,0,5])
            nextMatrix.append([12,0,0,5,0,0,5])
            nextMatrix.append([12,0,0,11,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,5,5,5,0,2,0])
            
            return nextMatrix
            
        }
        if(level==128) {
            
            var nextMatrix = [[3,0,11,0,0,0,0]]
            nextMatrix.append([0,4,11,0,0,10,0])
            nextMatrix.append([0,0,5,0,0,4,0])
            nextMatrix.append([0,0,11,9,0,0,10])
            nextMatrix.append([0,0,11,0,0,0,0])
            nextMatrix.append([0,0,11,4,0,0,10])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,11,0,8,0,0])
            nextMatrix.append([0,0,11,0,0,0,0])
            nextMatrix.append([0,5,11,0,0,0,0])
            nextMatrix.append([0,0,11,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,2])
            
            return nextMatrix
            
        }
        if(level==129) {
            
            var nextMatrix = [[0,4,0,0,0,0,5]]
            nextMatrix.append([3,0,0,0,0,0,5])
            nextMatrix.append([10,10,0,0,0,0,5])
            nextMatrix.append([10,10,0,0,0,0,5])
            nextMatrix.append([10,10,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,4,0,0,5])
            nextMatrix.append([5,0,9,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,11,2,5])
            nextMatrix.append([5,0,0,4,0,0,5])
            nextMatrix.append([5,0,0,6,0,0,5])
            
            return nextMatrix
            
        }
        if(level==130) {
            
            var nextMatrix = [[3,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,6,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,12,12,0,11,0])
            nextMatrix.append([0,0,11,0,4,11,0])
            nextMatrix.append([0,0,11,4,0,11,0])
            nextMatrix.append([0,0,11,4,0,11,0])
            nextMatrix.append([0,9,11,11,11,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            
            return nextMatrix
            
        }
        if(level==131) {
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([4,0,7,0,0,0,5])
            nextMatrix.append([0,6,0,0,0,0,5])
            nextMatrix.append([0,0,12,5,0,0,5])
            nextMatrix.append([12,0,0,12,4,3,5])
            nextMatrix.append([5,12,0,4,12,0,5])
            nextMatrix.append([5,0,12,0,0,0,12])
            nextMatrix.append([5,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,12,0,2])
            
            return nextMatrix
            
        }
        if(level==132) {
            
            var nextMatrix = [[0,6,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,7,0,5,0,6,0])
            nextMatrix.append([0,0,5,3,5,0,0])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,4,11,0,0,0])
            nextMatrix.append([0,0,5,12,5,0,0])
            nextMatrix.append([0,4,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,6,0,0])
            nextMatrix.append([0,0,9,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==133) {
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,0,0,0,0,0,5])
            nextMatrix.append([5,0,0,6,0,0,5])
            nextMatrix.append([5,5,4,7,0,0,5])
            nextMatrix.append([5,0,0,6,0,0,5])
            nextMatrix.append([5,4,0,7,0,2,5])
            nextMatrix.append([5,0,0,6,0,0,5])
            nextMatrix.append([5,11,5,5,5,5,5])
            nextMatrix.append([5,0,12,0,0,0,5])
            nextMatrix.append([5,4,12,0,6,0,5])
            nextMatrix.append([5,3,12,0,0,0,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        if(level==134) {
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,2,0,0,0,0,5])
            nextMatrix.append([5,0,0,0,0,0,0])
            nextMatrix.append([10,11,10,10,10,0,0])
            nextMatrix.append([0,12,0,0,0,0,0])
            nextMatrix.append([0,0,6,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,4])
            nextMatrix.append([4,0,5,5,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,5])
            nextMatrix.append([5,0,7,0,0,0,5])
            nextMatrix.append([5,0,4,3,0,0,5])
            nextMatrix.append([5,5,5,5,5,5,5])
            
            return nextMatrix
            
        }
        if(level==135) {
            
            var nextMatrix = [[0,0,0,5,0,0,0]]
            nextMatrix.append([0,2,0,5,0,3,0])
            nextMatrix.append([0,0,0,5,4,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,11,0,0,0,0,0])
            nextMatrix.append([0,5,4,11,0,4,5])
            nextMatrix.append([0,0,5,12,5,0,0])
            nextMatrix.append([0,5,0,12,0,5,0])
            nextMatrix.append([5,0,0,12,0,0,5])
            nextMatrix.append([0,7,0,5,0,6,0])
            
            return nextMatrix
            
        }
        if(level==136) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,5,0,9,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,0,11,9,11,0,5])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,7,10,0,0,6,0])
            nextMatrix.append([0,9,0,0,0,0,0])
            nextMatrix.append([0,4,0,0,0,4,0])
            nextMatrix.append([0,5,0,0,0,0,3])
            
            return nextMatrix
            
        }
        if(level==137) {
            
            var nextMatrix = [[12,0,0,5,0,0,3]]
            nextMatrix.append([12,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,6,0,0])
            nextMatrix.append([0,4,11,0,0,0,0])
            nextMatrix.append([5,0,0,5,0,7,0])
            nextMatrix.append([12,4,11,0,0,0,0])
            nextMatrix.append([12,0,11,0,6,0,0])
            nextMatrix.append([12,4,0,5,0,0,0])
            nextMatrix.append([5,0,11,0,0,0,0])
            nextMatrix.append([12,0,11,5,0,5,0])
            nextMatrix.append([12,0,11,0,0,0,0])
            nextMatrix.append([12,0,0,2,0,0,0])
            
            return nextMatrix
            
        }
        if(level==138) {
            
            var nextMatrix = [[2,0,10,0,0,0,0]]
            nextMatrix.append([0,0,0,10,0,0,0])
            nextMatrix.append([10,10,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,0,0,0,5])
            nextMatrix.append([0,0,0,0,7,0,5])
            nextMatrix.append([0,8,0,0,0,0,5])
            nextMatrix.append([0,0,0,4,0,0,5])
            nextMatrix.append([0,0,6,0,0,0,0])
            nextMatrix.append([0,0,0,0,9,0,0])
            nextMatrix.append([0,4,0,12,0,0,0])
            nextMatrix.append([3,0,5,0,0,0,0])
            
            return nextMatrix

            
        }
        if(level==139) {
            
            var nextMatrix = [[2,0,0,0,0,0,4]]
            nextMatrix.append([5,5,5,5,5,11,11])
            nextMatrix.append([0,0,3,5,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,9,0,7,0,0,8])
            nextMatrix.append([0,12,0,0,0,0,0])
            nextMatrix.append([0,0,0,6,0,0,0])
            nextMatrix.append([0,0,0,12,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,12,0,4])
            
            return nextMatrix
            
        }
        if(level==140) {
            
            var nextMatrix = [[0,0,0,12,0,0,0]]
            nextMatrix.append([0,5,0,0,0,2,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,5,0,7,0,5,4])
            nextMatrix.append([0,0,0,11,0,0,0])
            nextMatrix.append([0,5,0,11,0,11,0])
            nextMatrix.append([3,0,0,11,4,0,0])
            nextMatrix.append([0,4,6,0,0,0,5])
            nextMatrix.append([12,5,12,5,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,12,0,0,0])
            
            return nextMatrix
            
        }
        if(level==141) {
            
            var nextMatrix = [[0,5,0,2,0,5,0]]
            nextMatrix.append([0,5,5,11,11,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,11,11,5,5,0])
            nextMatrix.append([0,5,4,0,0,5,0])
            nextMatrix.append([0,5,5,11,11,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,11,11,5,5,8])
            nextMatrix.append([9,5,4,0,0,5,0])
            nextMatrix.append([0,5,5,11,11,5,0])
            nextMatrix.append([0,5,0,0,4,5,0])
            nextMatrix.append([0,5,3,0,0,5,0])
            
            return nextMatrix
            
        }
        if(level==142) {
         
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,7,0,0,0])
            nextMatrix.append([0,0,0,6,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,8,0])
            nextMatrix.append([12,12,12,0,0,0,0])
            nextMatrix.append([12,12,5,0,0,0,0])
            nextMatrix.append([0,0,11,0,4,0,0])
            nextMatrix.append([5,0,11,0,0,0,0])
            nextMatrix.append([5,4,5,0,0,0,0])
            nextMatrix.append([12,0,0,5,0,0,0])
            nextMatrix.append([12,0,2,5,0,0,3])
            
            return nextMatrix
            
        }
        if(level==143) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,2,0,0,0,0])
            nextMatrix.append([8,0,11,5,5,5,5])
            nextMatrix.append([0,0,12,12,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([4,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([12,12,12,12,12,8,4])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,4,11,0,0,0,0])
            nextMatrix.append([3,0,11,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==144) {
            
            var nextMatrix = [[2,0,5,5,12,0,3]]
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([0,0,5,5,0,0,0])
            nextMatrix.append([4,0,11,5,0,0,0])
            nextMatrix.append([0,0,5,12,0,9,0])
            nextMatrix.append([8,0,5,12,0,0,0])
            nextMatrix.append([0,0,5,12,5,0,0])
            nextMatrix.append([0,0,11,12,5,0,0])
            nextMatrix.append([4,0,11,12,5,0,0])
            nextMatrix.append([0,0,0,7,0,0,0])
            nextMatrix.append([0,0,0,0,6,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            
            return nextMatrix
            
        }
        if(level==145) {
            
            var nextMatrix = [[11,11,11,11,11,11,5]]
            nextMatrix.append([5,0,12,12,12,5,0])
            nextMatrix.append([5,2,5,0,0,0,3])
            nextMatrix.append([5,0,5,0,0,4,5])
            nextMatrix.append([5,0,5,0,8,0,5])
            nextMatrix.append([5,0,5,4,0,0,5])
            nextMatrix.append([5,0,12,0,0,0,5])
            nextMatrix.append([5,0,5,0,0,0,5])
            nextMatrix.append([5,0,0,11,0,0,5])
            nextMatrix.append([5,0,0,6,0,0,5])
            nextMatrix.append([5,5,0,4,0,0,5])
            nextMatrix.append([5,5,12,5,5,5,5])
            
            return nextMatrix

            
        }
        if(level==146) {
            
            var nextMatrix = [[0,0,0,6,0,0,0]]
            nextMatrix.append([0,0,0,0,0,0,2])
            nextMatrix.append([4,0,12,12,12,12,12])
            nextMatrix.append([0,0,0,0,7,0,0])
            nextMatrix.append([0,0,0,0,0,6,0])
            nextMatrix.append([5,5,11,11,11,5,5])
            nextMatrix.append([0,0,0,6,0,0,0])
            nextMatrix.append([0,0,0,0,0,4,0])
            nextMatrix.append([0,0,6,0,0,0,0])
            nextMatrix.append([5,5,5,11,11,11,5])
            nextMatrix.append([0,0,0,0,4,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            
            return nextMatrix
            
        }
        if(level==147) {
            
            var nextMatrix = [[5,5,5,5,5,5,5]]
            nextMatrix.append([5,12,12,3,0,0,0])
            nextMatrix.append([5,0,0,0,0,7,0])
            nextMatrix.append([5,0,0,0,4,0,0])
            nextMatrix.append([5,0,0,0,0,0,0])
            nextMatrix.append([5,0,6,0,0,0,0])
            nextMatrix.append([5,0,0,0,4,0,0])
            nextMatrix.append([5,0,0,12,5,5,5])
            nextMatrix.append([5,0,0,0,0,0,0])
            nextMatrix.append([5,4,0,0,0,0,0])
            nextMatrix.append([11,11,0,0,0,0,0])
            nextMatrix.append([0,2,11,0,0,0,0])
            
            return nextMatrix
            
        }
        if(level==148) {
            
            var nextMatrix = [[2,11,11,11,11,11,11]]
            nextMatrix.append([11,11,12,12,11,11,11])
            nextMatrix.append([11,11,5,11,11,11,11])
            nextMatrix.append([11,11,11,11,11,11,11])
            nextMatrix.append([11,11,11,5,11,11,11])
            nextMatrix.append([11,4,11,5,11,11,11])
            nextMatrix.append([11,11,11,11,11,11,11])
            nextMatrix.append([11,11,11,5,12,5,11])
            nextMatrix.append([11,12,11,5,11,4,11])
            nextMatrix.append([11,11,11,11,11,11,11])
            nextMatrix.append([11,11,11,11,11,11,11])
            nextMatrix.append([11,112,11,4,12,11,3])
            
            
            return nextMatrix
            
        }
        if(level==149) {
            
            var nextMatrix = [[2,0,11,11,11,11,11]]
            nextMatrix.append([11,0,11,11,11,11,11])
            nextMatrix.append([0,7,0,0,0,0,0])
            nextMatrix.append([5,0,4,11,11,11,11])
            nextMatrix.append([5,0,11,5,11,11,11])
            nextMatrix.append([5,9,12,12,12,11,11])
            nextMatrix.append([5,0,12,12,12,11,11])
            nextMatrix.append([5,0,12,12,12,11,11])
            nextMatrix.append([5,0,11,11,11,5,4])
            nextMatrix.append([0,0,0,7,0,0,0])
            nextMatrix.append([11,0,11,11,4,11,11])
            nextMatrix.append([11,0,11,3,11,11,5])
            
            return nextMatrix
            
        }
        
        var nextMatrix = [[0,0,0,0,0,0,0]]
        nextMatrix.append([0,0,0,2,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([4,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,3,0,0,0])
        nextMatrix.append([0,4,0,0,0,0,0])
        
        return nextMatrix
       
    }
}
