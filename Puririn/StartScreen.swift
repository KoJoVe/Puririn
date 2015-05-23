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
    
    var musicPlayer:AVAudioPlayer?
    var complete: Bool = false
    var mu = SKSpriteNode()
    var sd = SKSpriteNode()
    var audioPlayer = AVAudioPlayer()
    var transition = SKTransition.fadeWithDuration(1)
    var tran = false
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        if(musicPlayer == nil) {
            var music = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("PuririnTheme", ofType: "mp3")!)
            //println(alertSound)
            
            var error:NSError?
            musicPlayer = AVAudioPlayer(contentsOfURL: music, error: &error)
        }
        
        if(musicPlayer!.playing == false) {
            musicPlayer!.prepareToPlay()
            musicPlayer!.volume = 0.25
            if(UserLevel.getMusic() == 1) {
                musicPlayer!.play()
            }
        }
        
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
        
        var prop = self.frame.size.width/375.0
        var offset: CGFloat = self.frame.height/4.5
        
        var ng = SKSpriteNode(imageNamed: "PlayButton")
        ng.size = CGSizeMake(ng.frame.size.width/4, ng.frame.size.height/4)
        ng.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) - offset)
        ng.name = "StartGame"
        
        self.addChild(ng)
        
        var cr = SKSpriteNode(imageNamed: "CreditButton")
        cr.size = CGSizeMake(cr.frame.size.width/4, cr.frame.size.height/4)
        cr.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) - offset - ng.frame.size.height/2 - 20)
        cr.name = "Credits"
        
        self.addChild(cr)
        
        sd = SKSpriteNode(imageNamed: "AudioButton")
        if(UserLevel.getSound() == 0) {
            sd = SKSpriteNode(imageNamed: "NoAudioButton")
        }
        sd.size = CGSizeMake(sd.frame.size.width/4, sd.frame.size.height/4)
        sd.position = CGPointMake(CGRectGetMidX(self.frame) - sd.frame.size.width/2 + 1, CGRectGetMidY(self.frame) - offset - 2*ng.frame.size.height/2 - 40)
        sd.name = "Sound"
        
        self.addChild(sd)
        
        mu = SKSpriteNode(imageNamed: "MusicButton")
        if(UserLevel.getMusic() == 0) {
            mu = SKSpriteNode(imageNamed: "NoMusicButton")
        }
        mu.size = CGSizeMake(mu.frame.size.width/4, mu.frame.size.height/4)
        mu.position = CGPointMake(CGRectGetMidX(self.frame) + sd.frame.size.width/2 - 1, CGRectGetMidY(self.frame) - offset - 2*ng.frame.size.height/2 - 40)
        mu.name = "Music"
        
        self.addChild(mu)
        
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
            
            if (name == "StartGame" && tran == false) {
                
                playSound()
                
                tran = true
                
                var scene = LevelSelector(size:self.size)
                scene.musicPlayer = musicPlayer
                
                self.scene!.view?.presentScene(scene, transition: self.transition)
                
            } else if(name == "Sound") {
                
                toggleSound()
                
            } else if(name == "Music") {
                
                playSound()
                
                toggleMusic()
                
            } else if(name == "Credits") {
                
                playSound()
                
                tran = true
                
                var scene = CreditsScene(size:self.size)
                scene.musicPlayer = musicPlayer
                
                self.scene!.view?.presentScene(scene, transition: self.transition)
                
            }
        }
    }
    
    override func willMoveFromView(view: SKView) {
        
        for child in self.children {
            child.removeFromParent()
        }
        
    }
    
    func playSound() {
        
        if(UserLevel.getSound() == 1) {
        
            var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ok", ofType: "aif")!)
            //println(alertSound)
            
            var error:NSError?
            audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        
    }
    
    func toggleMusic() {
        
        if(UserLevel.getMusic() == 1) {
            var action = SKAction.setTexture(SKTexture(imageNamed: "NoMusicButton"))
            mu.runAction(action)
            UserLevel.setMusic(0)
            stopMusic()
        } else {
            var action = SKAction.setTexture(SKTexture(imageNamed: "MusicButton"))
            mu.runAction(action)
            UserLevel.setMusic(1)
            startMusic()
        }

    }
    
    func toggleSound() {
        if(UserLevel.getSound() == 1) {
            var action = SKAction.setTexture(SKTexture(imageNamed: "NoAudioButton"))
            sd.runAction(action)
            UserLevel.setSound(0)
        } else {
            var action = SKAction.setTexture(SKTexture(imageNamed: "AudioButton"))
            sd.runAction(action)
            UserLevel.setSound(1)
            playSound()
        }
    }
    
    func stopMusic() {
        
        musicPlayer!.stop()
        musicPlayer!.currentTime = 0
        musicPlayer!.prepareToPlay()
        musicPlayer!.volume = 0.25
    }
    
    func startMusic() {
        
        musicPlayer!.play()
        
    }
   
}
