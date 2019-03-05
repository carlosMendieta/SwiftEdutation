//
//  plist.swift
//  SpaceAdventure
//
//  Created by Carlos Mendieta on 3/4/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation

func pListCreation() {
    let fileManager = FileManager.default
    let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
    let path = documentDirectory.appending("/Endava/SwiftEdutation/SpaceAdventure-lesson01/SpaceAdventure/spaceAdventure.plist")
    if (!fileManager.fileExists(atPath: path)) {
        let didContent: [String: [String]] = planetDictionary
        let plistContent = NSDictionary(dictionary: didContent)
        let success:Bool = plistContent.write(toFile: path, atomically: true)
        if success {
            print("file has been created!")
        }else{
            print("unable to create the file")
        }
    }else{
        print("file already exist")
    }
}

