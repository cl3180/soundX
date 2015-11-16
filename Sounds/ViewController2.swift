//  ViewController.swift
//  Naughty Sounds
//  Created by Cherie Luo on 1/2/15.
//  Copyright (c) 2015 Cherie Luo. All rights reserved.

import UIKit;
import AVFoundation;

//Naughty Sounds
class ViewController2: UIViewController {
    
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var figureView: UIImageView!
    @IBOutlet weak var grassImage: UIImageView!
  
    @IBOutlet weak var expButton: UIButton!
    @IBOutlet weak var SonicButton: UIButton!
    @IBOutlet weak var boomButton: UIButton!
    @IBOutlet weak var sonicImage: UIImageView!
    
    @IBOutlet weak var booImage: UIImageView!
    @IBOutlet weak var booButton: UIButton!
    
    @IBOutlet weak var snoreImage: UIImageView!
    @IBOutlet weak var snoreButton: UIButton!
    
    @IBOutlet weak var staticImage: UIImageView!
    @IBOutlet weak var staticButton: UIButton!
    
    @IBOutlet weak var dramaImage: UIImageView!
    @IBOutlet weak var dramaButton: UIButton!
    
    //@IBOutlet weak var laughButton: UIButton!
    @IBOutlet weak var laughImage: UIImageView!
    
    @IBOutlet weak var laughrealButton: UIButton!
    @IBAction func laughrealButton(sender: UIButton) {
    }
    
    
    @IBOutlet weak var fartButton: UIButton!
    @IBOutlet weak var smellyButton: UIButton!
    @IBOutlet weak var smellyFartImage: UIImageView!
    
    @IBOutlet weak var buttButton: UIButton!
    @IBOutlet weak var tubaButton: UIButton!
    @IBOutlet weak var buttTubaImage: UIImageView!
    
    @IBOutlet weak var stinkbombImage: UIImageView!
    @IBOutlet weak var stinkButton: UIButton!
    @IBOutlet weak var bombButton: UIButton!
   
    
    var boo = AVAudioPlayer(); //this is for a "boo" sound
    var explo = AVAudioPlayer(); //this is for "explosion"
    var phone = AVAudioPlayer();
    var yeehaw = AVAudioPlayer();
    var fart = AVAudioPlayer();
    var snoring = AVAudioPlayer();
    var sonic = AVAudioPlayer();
    var evil = AVAudioPlayer();
    var drama = AVAudioPlayer();
    var smelly = AVAudioPlayer();
    var butt = AVAudioPlayer();
    var tuba = AVAudioPlayer();
    var stink = AVAudioPlayer();
    var bomb = AVAudioPlayer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        evil =  self.setupAudioPlayerWithFile("EvilLaugh", type: "mp3");
        drama =  self.setupAudioPlayerWithFile("Drama", type: "mp3");
        sonic = self.setupAudioPlayerWithFile("Sonic", type: "mp3");
        smelly = self.setupAudioPlayerWithFile("ButtSound", type: "mp3");
        butt = self.setupAudioPlayerWithFile("GaryFart", type: "mp3");
        tuba = self.setupAudioPlayerWithFile("DomsFart", type: "mp3");
        stink = self.setupAudioPlayerWithFile("SmellySound", type: "mp3");
        bomb = self.setupAudioPlayerWithFile("SamFart", type: "mp3");
        boo = self.setupAudioPlayerWithFile("BooReal", type: "mp3");
        explo = self.setupAudioPlayerWithFile("Explosion", type: "mp3");
        phone = self.setupAudioPlayerWithFile("PhoneStatic", type: "mp3");
        fart = self.setupAudioPlayerWithFile("Fart", type: "mp3");
        snoring = self.setupAudioPlayerWithFile("Snoring", type: "mp3");
        
        self.setUpFrames()
    }
    

    func setUpFrames(){
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size;
        var setUp = ViewControllerSetup(); //this makes a new object
        
        self.logoView.frame = CGRectMake((CGFloat)(setUp.logoXStart()), (CGFloat)(setUp.logoStart()),(CGFloat)(setUp.logoWidth()), (CGFloat)(setUp.logoHeight())); //was originally figureheight
    
        self.figureView.frame = CGRectMake((CGFloat)(setUp.figureXStart()), (CGFloat)(setUp.figureStart()), (CGFloat)(setUp.figureWidth()), (CGFloat)(setUp.figureHeight()));
       
        self.grassImage.frame = CGRectMake((CGFloat)(setUp.grassXStart()), (CGFloat)(setUp.grassStart()), (CGFloat)(setUp.grassWidth()), (CGFloat)(setUp.grassHeight()));
        self.grassImage.contentMode = .ScaleAspectFit;
        //Fit the picture into the frame
       
        //Figure out the X,Y start points for the 9 images and buttons
        
        var colStarts = setUp.soundColumnStarts();
        var rowStarts = setUp.soundRowStarts();
        
        var imageX: [Int] = [setUp.soundImageXStart(colStarts.first), setUp.soundImageXStart(colStarts.second), setUp.soundImageXStart(colStarts.third), setUp.soundImageXStart(colStarts.first), setUp.soundImageXStart(colStarts.second), setUp.soundImageXStart(colStarts.third), setUp.soundImageXStart(colStarts.first), setUp.soundImageXStart(colStarts.second), setUp.soundImageXStart(colStarts.third)]
        
        var imageY: [Int] = [setUp.soundImageYStart(rowStarts.first), setUp.soundImageYStart(rowStarts.first), setUp.soundImageYStart(rowStarts.first), setUp.soundImageYStart(rowStarts.second), setUp.soundImageYStart(rowStarts.second), setUp.soundImageYStart(rowStarts.second), setUp.soundImageYStart(rowStarts.third), setUp.soundImageYStart(rowStarts.third), setUp.soundImageYStart(rowStarts.third)]
        
        var buttonX: [Int] = [setUp.soundButtonXStart(colStarts.first), setUp.soundButtonXStart(colStarts.second), setUp.soundButtonXStart(colStarts.third), setUp.soundButtonXStart(colStarts.first), setUp.soundButtonXStart(colStarts.second), setUp.soundButtonXStart(colStarts.third), setUp.soundButtonXStart(colStarts.first), setUp.soundButtonXStart(colStarts.second), setUp.soundButtonXStart(colStarts.third)]
        
        var buttonY: [Int] = [setUp.soundButtonYStart(rowStarts.first), setUp.soundButtonYStart(rowStarts.first), setUp.soundButtonYStart(rowStarts.first), setUp.soundButtonYStart(rowStarts.second), setUp.soundButtonYStart(rowStarts.second), setUp.soundButtonYStart(rowStarts.second), setUp.soundButtonYStart(rowStarts.third), setUp.soundButtonYStart(rowStarts.third), setUp.soundButtonYStart(rowStarts.third)]
        
        //Now use these to set the frames
        
        self.sonicImage.frame = CGRectMake((CGFloat)(imageX[0]), (CGFloat)(imageY[0]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        //self.SonicButton.frame = CGRectMake((CGFloat)(buttonX[0]), (CGFloat)(buttonY[0]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.boomButton.frame = CGRectMake((CGFloat)(buttonX[0]), (CGFloat)(buttonY[0]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.booImage.frame = CGRectMake((CGFloat)(imageX[1]), (CGFloat)(imageY[1]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.booButton.frame = CGRectMake((CGFloat)(buttonX[1]), (CGFloat)(buttonY[1]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.snoreImage.frame = CGRectMake((CGFloat)(imageX[2]), (CGFloat)(imageY[2]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.snoreButton.frame = CGRectMake((CGFloat)(buttonX[2]), (CGFloat)(buttonY[2]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        //Second row
        
        self.staticImage.frame = CGRectMake((CGFloat)(imageX[3]), (CGFloat)(imageY[3]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.staticButton.frame = CGRectMake((CGFloat)(buttonX[3]), (CGFloat)(buttonY[3]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.dramaImage.frame = CGRectMake((CGFloat)(imageX[4]), (CGFloat)(imageY[4]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.dramaButton.frame = CGRectMake((CGFloat)(buttonX[4]), (CGFloat)(buttonY[4]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.laughImage.frame = CGRectMake((CGFloat)(imageX[5]), (CGFloat)(imageY[5]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.laughrealButton.frame = CGRectMake((CGFloat)(buttonX[5]), (CGFloat)(buttonY[5]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        //Third row
        
        self.smellyFartImage.frame = CGRectMake((CGFloat)(imageX[6]), (CGFloat)(imageY[6]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.smellyButton.frame = CGRectMake((CGFloat)(buttonX[6]), (CGFloat)(buttonY[6]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        //self.fartButton.frame = CGRectMake((CGFloat)(buttonX[6]), (CGFloat)(buttonY[6]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.buttTubaImage.frame = CGRectMake((CGFloat)(imageX[7]), (CGFloat)(imageY[7]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.buttButton.frame = CGRectMake((CGFloat)(buttonX[7]), (CGFloat)(buttonY[7]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        //self.tubaButton.frame = CGRectMake((CGFloat)(buttonX[7]), (CGFloat)(buttonY[7]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        
        self.stinkbombImage.frame = CGRectMake((CGFloat)(imageX[8]), (CGFloat)(imageY[8]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.stinkButton.frame = CGRectMake((CGFloat)(buttonX[8]), (CGFloat)(buttonY[8]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        //self.bombButton.frame = CGRectMake((CGFloat)(buttonX[8]), (CGFloat)(buttonY[8]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
    }
    
    @IBAction func evilButton(sender: AnyObject) {
        self.evil.play();
    }
    
    @IBAction func laughButton(sender: AnyObject) {
        self.evil.play();
    }
    
    
    @IBAction func sonicButton(sender: AnyObject) {
        self.sonic.play();
        
    }
    @IBAction func smellyButton(sender: AnyObject) {
        self.smelly.play();
        
    }
    
    @IBAction func bombButton(sender: AnyObject) {
        self.bomb.play();
        
    }
    @IBAction func stinkButton(sender: AnyObject) {
        self.stink.play();
    }
    @IBAction func buttButton(sender: AnyObject) {
        self.butt.play();
    }
    
    @IBAction func tubaButton(sender: AnyObject) {
        self.tuba.play();
    }
    
    @IBAction func fartButton(sender: AnyObject) {
        self.fart.play();
        
    }
    @IBAction func ExploButton(sender: AnyObject) {
        self.explo.play();
    }
    
    
    @IBAction func BooButton(sender: AnyObject) {
        self.boo.play();
    }
    @IBAction func staticButton(sender: AnyObject) {
        self.phone.play();
    }
    
    @IBAction func DramaticButton(sender: AnyObject) {
        //there is no dramatic sound
        self.drama.play();
    }
    
    
    @IBAction func SnoringButton(sender: AnyObject) {
        self.snoring.play();
    }
    
    
    /*method to return an AVAudioPlayer object*/ //I found this code online
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer
    {
        var path = NSBundle.mainBundle().pathForResource(file as String, ofType:type as String)
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

