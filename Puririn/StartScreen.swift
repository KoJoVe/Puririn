//
//  StartScreen.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 03/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit
import AVFoundation

class StartScreen: SKScene {
    
    var complete: Bool = false
    var audioPlayer = AVAudioPlayer()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        UserLevel.initializeArray()
        
        var bc = SKSpriteNode(imageNamed: "NewGameScreen")
        
        var h = (self.frame.size.width*bc.size.height)/bc.size.width
        
        bc.size = CGSizeMake(self.frame.size.width, h)
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        
        self.addChild(bc)
        
//        var lg = SKSpriteNode(imageNamed: "LogoInicio")
//        lg.size = CGSizeMake(self.frame.width/1.5, self.frame.width/1.5)
//        lg.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) + 50)
//        lg.name = "Logo"
//        
//        self.addChild(lg)
        
        var ng = SKSpriteNode(imageNamed: "PlayButton")
        ng.size = CGSizeMake(ng.frame.size.width/4, ng.frame.size.height/4)
        ng.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) - self.frame.height/3.8)
        ng.name = "StartGame"
        
        self.addChild(ng)
        
        if self.complete == true {
            
            let alert = UIAlertView(title: "Congratulations!", message: "You've finished the game! More challenging levels coming soon!", delegate: self, cancelButtonTitle: "Dismiss")
            alert.show()
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        //        println(self.movePuririn)
        //        println(self.firstPoint)
        
        for touch in (touches as! Set<UITouch>) {
            
            var name = nodeAtPoint(touch.locationInNode(self)).name
            
            if name == "StartGame" {
                
                playSound()
                var transition = SKTransition.doorsOpenHorizontalWithDuration(0.5)
                var scene = LevelSelector(size:self.size)
                scene.scaleMode = .AspectFill
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
                
            }

        }
    }
    
    func playSound() {
        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ok", ofType: "aif")!)
        //println(alertSound)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
   
}
