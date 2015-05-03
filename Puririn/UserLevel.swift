//
//  UserLevel.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 03/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import Foundation

class UserLevel {
    
    class func getUserLevel() -> Int {
        
        var level = ""
        
        var pathAux = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String
        var path = pathAux.stringByAppendingPathComponent("qualquerCoisa.plist")
        var fileManager = NSFileManager.defaultManager()
        if (!(fileManager.fileExistsAtPath(path)))
        {
            var bundle : NSString! = NSBundle.mainBundle().pathForResource("qualquerCoisa", ofType: "plist")
            fileManager.copyItemAtPath(bundle as String, toPath: path, error:nil)
        }
        
        let contents:NSDictionary! = NSDictionary(contentsOfFile: path as String)
        level = contents.objectForKey("Level") as! String
        
        return level.toInt()!
    }
   
    class func setUserLevel(level: Int) {
        
        var pathAux = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String
        var path = pathAux.stringByAppendingPathComponent("qualquerCoisa.plist")
        var fileManager = NSFileManager.defaultManager()
        
        if (!(fileManager.fileExistsAtPath(path)))
        {
            var bundle: NSString! = NSBundle.mainBundle().pathForResource("qualquerCoisa", ofType: "pList")!
            fileManager.copyItemAtPath(bundle as String, toPath: path, error: nil)
        }
        
        var data : NSMutableDictionary! = NSMutableDictionary(contentsOfFile: path)
        data.setObject(level, forKey: "Level")
        data.writeToFile(path, atomically: false)
        
    }
    
}
