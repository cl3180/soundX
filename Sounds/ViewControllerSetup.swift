//
//  ViewControllerSetup.swift
//  Sounds
//
//  Created by Brian Morton on 3/16/15.
//  Copyright (c) 2015 Cherie Luo. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerSetup{
    
    func midWidth() -> Int{
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size
        return (Int)(iOSDeviceScreenSize.width/2)
    }
    
    func sectionHeight() -> Int{
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size
        return (Int)(iOSDeviceScreenSize.height/6)
    }
    
    func sectionWidth() -> Int{
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size
        return (Int)((iOSDeviceScreenSize.width-30)/3)
    }
    
    func soundImageWidth() -> Int{
        return 82
    }
    
    func soundImageHeight() -> Int{
        return 82
    }
    
    func soundImageXStart(a:Int) -> Int{
        return a + (Int)(sectionWidth()/2)-41
    }
    
    //this move the words within the bubbles (the actual buttons)
    func soundImageYStart(a:Int) -> Int{
        return a + (Int)(sectionHeight()/2)-33
    }
    
    
    func soundButtonWidth() -> Int{
        return 96
    }
    
    func soundButtonHeight() -> Int{
        return 56
    }
    
    func soundButtonXStart(a:Int) -> Int{
        return a + (Int)(sectionWidth()/2)-48
    }
    
    func soundButtonYStart(a:Int) -> Int{
        return a + (Int)(sectionHeight()/2)-28
    }
    
    //this changes the placement of the cat
    func figureStart() -> Int{
        return sectionHeight() + (Int)((sectionHeight() - 60)/2)
    }
    
    func figureXStart() -> Int{
        return midWidth() - 52
    }
    
    
    //this changes how big the cat is
    func figureWidth() -> Int{
        return 80
    }
    
    func figureHeight() -> Int{
        return 72
    }
    
    
    func logoStart() -> Int{
        return (Int)((sectionHeight() - 60)/2)
    }

    func logoXStart() -> Int{
        return midWidth() - 60
    }
    
    func logoWidth() -> Int{
        return 170
    }
    
    func logoHeight() -> Int{
        return 90
    }
    
    
    func grassStart() -> Int{
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size
        return (Int)(iOSDeviceScreenSize.height) - sectionHeight()
    }
    
    func grassXStart() -> Int{
        return 0
    }
    
    func grassWidth() -> Int{
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size
        return (Int)(iOSDeviceScreenSize.width)
    }
    
    func grassHeight() -> Int{
        return sectionHeight()-25
    }
    
    
    func soundRowStarts() -> (first:Int, second:Int, third:Int){
        return (sectionHeight()*2, sectionHeight()*3, sectionHeight()*4)
    }
    
    func soundColumnStarts() -> (first:Int, second:Int, third:Int){
        return (15, sectionWidth()+15, sectionWidth()*2+15)
    }
    
}