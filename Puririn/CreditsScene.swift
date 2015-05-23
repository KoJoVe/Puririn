//
//  CreditsScene.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 23/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit
import AVFoundation

class CreditsScene: SKScene {
   
    var musicPlayer:AVAudioPlayer?
    var transition = SKTransition.fadeWithDuration(1)
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        var music = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("PuririnTheme", ofType: "mp3")!)
        //println(alertSound)
        
        var error:NSError?
        musicPlayer = AVAudioPlayer(contentsOfURL: music, error: &error)
        
        if(musicPlayer!.playing == false) {
            musicPlayer!.prepareToPlay()
            musicPlayer!.volume = 0.25
            if(UserLevel.getMusic() == 1) {
                musicPlayer!.play()
            }
        }
        
        var bc = SKSpriteNode(imageNamed: "Space")
        
        var h = (self.frame.size.width*bc.size.height)/bc.size.width
        
        bc.size = CGSizeMake(self.frame.size.width, h)
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        
        self.addChild(bc)
        
        var cr = SKSpriteNode(imageNamed: "Credits")
        cr.size = CGSizeMake(cr.frame.size.width/4, cr.frame.size.height/4)
        cr.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        cr.name = "Back"
        
        self.addChild(cr)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
       
        var scene = StartScreen(size:self.size)
        scene.musicPlayer = musicPlayer
        
        self.scene!.view?.presentScene(scene, transition: self.transition)
        
    }
    
    override func willMoveFromView(view: SKView) {
        
        for child in self.children {
            child.removeFromParent()
        }
        
    }
}
