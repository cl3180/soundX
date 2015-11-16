//  ViewController.swift
//  Animal Sounds
//  Created by Cherie Luo on 1/2/15.
//  Copyright (c) 2015 Cherie Luo. All rights reserved.

import UIKit;
import AVFoundation;

//Animal Sounds
class ViewController: UIViewController {
    
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var figureView: UIImageView!
    @IBOutlet weak var grassImage: UIImageView!
    
    @IBOutlet weak var pigImage: UIImageView!
    @IBOutlet weak var pigButton: UIButton!
    
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catButton: UIButton!
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var dogButton: UIButton!
    
    @IBOutlet weak var cowImage: UIImageView!
    @IBOutlet weak var cowButton: UIButton!
    
    @IBOutlet weak var chickenImage: UIImageView!
    @IBOutlet weak var chickenButton: UIButton!
    
    @IBOutlet weak var squirrelImage: UIImageView!
    @IBOutlet weak var squirrelButton: UIButton!
    
    @IBOutlet weak var wolfButton: UIButton!
    @IBOutlet weak var wolfImage: UIImageView!
    
    @IBOutlet weak var cricketButton: UIButton!
    @IBOutlet weak var cricketImage: UIImageView!
    
    @IBOutlet weak var gremlinButton: UIButton!
    @IBOutlet weak var gremlinImage: UIImageView!
    
    var moo = AVAudioPlayer(); //this is for a "moo" sound
    var chicken = AVAudioPlayer(); //this is for "explosion"
    var oink = AVAudioPlayer(); //this is for "applause"
    var squirrel = AVAudioPlayer();
    var meow = AVAudioPlayer();
    var woof = AVAudioPlayer();
    var cricket = AVAudioPlayer();
    var gremlin = AVAudioPlayer();
    var wolf = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        cricket = self.setupAudioPlayerWithFile("Crickets", type: "mp3");
        gremlin = self.setupAudioPlayerWithFile("Gremlin", type: "mp3");
        wolf = self.setupAudioPlayerWithFile("WolfWhistle", type: "mp3");
        meow = self.setupAudioPlayerWithFile("Meow", type: "mp3");
        woof = self.setupAudioPlayerWithFile("Woof", type: "mp3");
        moo = self.setupAudioPlayerWithFile("Moo", type: "mp3");
        chicken = self.setupAudioPlayerWithFile("Chicken", type: "mp3");
        oink = self.setupAudioPlayerWithFile("Pig", type: "mp3");
        squirrel = self.setupAudioPlayerWithFile("Squirrel", type: "mp3");
        self.setUpFrames()
    
    
    }
    
    
    func setUpFrames(){
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size;
        var setUp = ViewControllerSetup(); //new object
        
        self.logoView.frame = CGRectMake((CGFloat)(setUp.logoXStart()), (CGFloat)(setUp.logoStart()), (CGFloat)(setUp.logoWidth()), (CGFloat)(setUp.logoHeight()))
        
        self.figureView.frame = CGRectMake((CGFloat)(setUp.figureXStart()), (CGFloat)(setUp.figureStart()), (CGFloat)(setUp.figureWidth()), (CGFloat)(setUp.figureHeight()))
        
        self.grassImage.frame = CGRectMake((CGFloat)(setUp.grassXStart()), (CGFloat)(setUp.grassStart()), (CGFloat)(setUp.grassWidth()), (CGFloat)(setUp.grassHeight()))
        self.grassImage.contentMode = .ScaleAspectFit//Fit the picture into the frame
        
        //Figure out the X,Y start points for the 9 images and buttons
        
        var colStarts = setUp.soundColumnStarts()
        var rowStarts = setUp.soundRowStarts()
        
        var imageX: [Int] = [setUp.soundImageXStart(colStarts.first), setUp.soundImageXStart(colStarts.second), setUp.soundImageXStart(colStarts.third), setUp.soundImageXStart(colStarts.first), setUp.soundImageXStart(colStarts.second), setUp.soundImageXStart(colStarts.third), setUp.soundImageXStart(colStarts.first), setUp.soundImageXStart(colStarts.second), setUp.soundImageXStart(colStarts.third)]
        
        var imageY: [Int] = [setUp.soundImageYStart(rowStarts.first), setUp.soundImageYStart(rowStarts.first), setUp.soundImageYStart(rowStarts.first), setUp.soundImageYStart(rowStarts.second), setUp.soundImageYStart(rowStarts.second), setUp.soundImageYStart(rowStarts.second), setUp.soundImageYStart(rowStarts.third), setUp.soundImageYStart(rowStarts.third), setUp.soundImageYStart(rowStarts.third)]
        
        
        var buttonX: [Int] = [setUp.soundButtonXStart(colStarts.first), setUp.soundButtonXStart(colStarts.second), setUp.soundButtonXStart(colStarts.third), setUp.soundButtonXStart(colStarts.first), setUp.soundButtonXStart(colStarts.second), setUp.soundButtonXStart(colStarts.third), setUp.soundButtonXStart(colStarts.first), setUp.soundButtonXStart(colStarts.second), setUp.soundButtonXStart(colStarts.third)]
       
        var buttonY: [Int] = [setUp.soundButtonYStart(rowStarts.first), setUp.soundButtonYStart(rowStarts.first), setUp.soundButtonYStart(rowStarts.first), setUp.soundButtonYStart(rowStarts.second), setUp.soundButtonYStart(rowStarts.second), setUp.soundButtonYStart(rowStarts.second), setUp.soundButtonYStart(rowStarts.third), setUp.soundButtonYStart(rowStarts.third), setUp.soundButtonYStart(rowStarts.third)]
        
        //Now use these to set the frames
        self.catImage.frame = CGRectMake((CGFloat)(imageX[0]), (CGFloat)(imageY[0]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.catButton.frame = CGRectMake((CGFloat)(buttonX[0]), (CGFloat)(buttonY[0]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        self.catButton.addTarget(self, action: "meow:", forControlEvents: UIControlEvents.TouchUpInside) //this doesn't match
        
        self.dogImage.frame = CGRectMake((CGFloat)(imageX[1]), (CGFloat)(imageY[1]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.dogButton.frame = CGRectMake((CGFloat)(buttonX[1]), (CGFloat)(buttonY[1]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.cowImage.frame = CGRectMake((CGFloat)(imageX[2]), (CGFloat)(imageY[2]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.cowButton.frame = CGRectMake((CGFloat)(buttonX[2]), (CGFloat)(buttonY[2]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        //Second row
        self.chickenImage.frame = CGRectMake((CGFloat)(imageX[3]), (CGFloat)(imageY[3]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.chickenButton.frame = CGRectMake((CGFloat)(buttonX[3]), (CGFloat)(buttonY[3]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.pigImage.frame = CGRectMake((CGFloat)(imageX[4]), (CGFloat)(imageY[4]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.pigButton.frame = CGRectMake((CGFloat)(buttonX[4]), (CGFloat)(buttonY[4]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.squirrelImage.frame = CGRectMake((CGFloat)(imageX[5]), (CGFloat)(imageY[5]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.squirrelButton.frame = CGRectMake((CGFloat)(buttonX[5]), (CGFloat)(buttonY[5]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        //Third row
        self.wolfImage.frame = CGRectMake((CGFloat)(imageX[6]), (CGFloat)(imageY[6]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.wolfButton.frame = CGRectMake((CGFloat)(buttonX[6]), (CGFloat)(buttonY[6]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.cricketImage.frame = CGRectMake((CGFloat)(imageX[7]), (CGFloat)(imageY[7]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.cricketButton.frame = CGRectMake((CGFloat)(buttonX[7]), (CGFloat)(buttonY[7]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.gremlinImage.frame = CGRectMake((CGFloat)(imageX[8]), (CGFloat)(imageY[8]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.gremlinButton.frame = CGRectMake((CGFloat)(buttonX[8]), (CGFloat)(buttonY[8]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))

    }
    
   
    func meow(sender:UIButton!){
        self.meow.play()
    }
    
    @IBAction func wolfWhistle(sender: AnyObject) {
        self.wolf.play();
    }
    
    
    @IBAction func cricketButton(sender: AnyObject) {
        self.cricket.play()
    }
    
    @IBAction func gremlinButton(sender: AnyObject) {
        self.gremlin.play();
    }
    
    @IBAction func MeowButton(sender: AnyObject) {
        self.meow.play();
    
    }
    
    @IBAction func WoofButton(sender: AnyObject) {
        self.woof.play();
    }

    
    @IBAction func MooButton(sender: AnyObject) {
        self.moo.play();
    }
    
    @IBAction func ChickenButton(sender: AnyObject) {
        self.chicken.play();
    }
    
    
    @IBAction func PigButton(sender: AnyObject) {
        self.oink.play();
    }
    
    
    @IBAction func SquirrelButton(sender: AnyObject) {
        self.squirrel.play();
    }
    
   /*method to return an AVAudioPlayer object*/ //I found this code online
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer
    {
        var path = NSBundle.mainBundle().pathForResource(file as String, ofType:type as String) //remove as String
        var url = NSURL.fileURLWithPath(path!)
        var error: NSError?
        var audioPlayer:AVAudioPlayer?
        audioPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
        return audioPlayer!
    }
    
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

