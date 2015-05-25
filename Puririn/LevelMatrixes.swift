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
            
            var nextMatrix = [[0,0,0,4,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
            return nextMatrix
            
        }
        
        if(level==1) {
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,4,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,0,0,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,3,0,0,0,0,0])
            nextMatrix.append([0,0,0,4,0,0,0])
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
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,5,5,5,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,0,0,3,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            
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
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
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
            
            var nextMatrix = [[0,0,0,0,0,0,0]]
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([0,0,5,0,5,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,0,3,0,0,0])
            nextMatrix.append([5,5,0,0,0,5,5])
            nextMatrix.append([0,0,0,0,0,0,0])
       
            return nextMatrix //REPETIDA
            
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
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,5,5,5,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([5,0,0,5,0,0,5])
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

            var nextMatrix = [[2,0,5,0,0,0,0]]
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([5,5,0,0,5,0,0])
            nextMatrix.append([0,0,5,0,0,5,0])
            nextMatrix.append([0,0,5,0,0,0,5])
            nextMatrix.append([0,0,0,5,4,0,5])
            nextMatrix.append([0,0,0,5,4,0,5])
            nextMatrix.append([0,0,5,0,4,0,5])
            nextMatrix.append([0,0,5,0,0,5,0])
            nextMatrix.append([5,5,0,0,5,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([3,0,5,0,0,0,0])
            
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
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,5,0,5,0,5,0])
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([0,0,5,0,0,0,0])
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
            nextMatrix.append([0,5,0,0,0,5,0])
            nextMatrix.append([5,0,0,5,0,0,5])
            nextMatrix.append([0,0,5,5,5,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([0,0,0,2,0,0,0])
            nextMatrix.append([5,5,0,0,0,5,5])
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
            nextMatrix.append([0,3,0,0,0,0,0])
            nextMatrix.append([0,0,0,0,0,0,0])
            nextMatrix.append([5,5,5,5,5,0,0])
            nextMatrix.append([0,0,0,5,0,0,0])
            nextMatrix.append([0,0,5,0,0,0,0])
            nextMatrix.append([0,5,0,0,5,0,0])
            nextMatrix.append([0,5,0,0,0,0,0])
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
        
        var nextMatrix = [[0,0,0,0,0,0,0]]
        nextMatrix.append([0,0,0,2,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        nextMatrix.append([0,0,0,3,0,0,0])
        nextMatrix.append([0,0,0,0,0,0,0])
        
        return nextMatrix
       
    }
    
}
