//  ViewController.swift
//  Happy Sounds
//  Created by Cherie Luo on 1/2/15.
//  Copyright (c) 2015 Cherie Luo. All rights reserved.

import UIKit;
import AVFoundation;

//Nice sounds
class ViewController3: UIViewController {
    
    
    @IBOutlet weak var grassImage: UIImageView!
    @IBOutlet weak var figureView: UIImageView!
    @IBOutlet weak var logoView: UIImageView!
    
    @IBOutlet weak var snap: UIButton!
    @IBOutlet weak var snapButton: UIImageView!
    
    
    //@IBOutlet weak var whooButton: UIImageView!
    @IBOutlet weak var whooImage: UIImageView!
    @IBOutlet weak var whooButtonReal: UIButton!
    
    @IBOutlet weak var chaChingImage: UIImageView!
    @IBOutlet weak var chaChinaButton: UIButton!
    
    @IBOutlet weak var clappingImage: UIImageView!
    @IBOutlet weak var clappingButton: UIButton!
    
    @IBOutlet weak var laughImage: UIImageView!
    @IBOutlet weak var laughButton: UIButton!
    
    @IBOutlet weak var doitImage: UIImageView!
    @IBOutlet weak var doitButton: UIButton!
    
    @IBOutlet weak var yeehawImage: UIImageView!
    @IBOutlet weak var yeehawButton: UIButton!
    
    @IBOutlet weak var onfleekImage: UIImageView!
    @IBOutlet weak var onfleekButton: UIButton!
    
    @IBOutlet weak var hornImage: UIImageView!
    @IBOutlet weak var hornButton: UIButton!
    
    
    var yay = AVAudioPlayer();
    var whoohoo = AVAudioPlayer();
    var cheering = AVAudioPlayer();
    var applause = AVAudioPlayer();
    var yeehaw = AVAudioPlayer();
    var youcandoit = AVAudioPlayer();
    var laugh = AVAudioPlayer();
    var ohsnap = AVAudioPlayer();
    var onfleek = AVAudioPlayer();
    var horn = AVAudioPlayer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onfleek = self.setupAudioPlayerWithFile("On Fleek", type: "mp3");
        laugh = self.setupAudioPlayerWithFile("Laugh", type: "mp3");
        horn = self.setupAudioPlayerWithFile("Horn", type: "mp3");
        ohsnap = self.setupAudioPlayerWithFile("Oh Snap", type: "mp3");
        whoohoo = self.setupAudioPlayerWithFile("WhooHoo", type: "mp3");
        cheering = self.setupAudioPlayerWithFile("Chaching", type: "mp3");
        applause = self.setupAudioPlayerWithFile("Clapping", type: "mp3");
        yeehaw = self.setupAudioPlayerWithFile("Yeehaw", type: "mp3");
        youcandoit = self.setupAudioPlayerWithFile("You got it", type: "mp3");
        
        
        //OMG THIS IS IT
        self.setUpFrames()
        
    }
    
    
    func setUpFrames(){
        var iOSDeviceScreenSize = UIScreen.mainScreen().bounds.size;
        var setUp = ViewControllerSetup(); //new object
        
        self.figureView.frame = CGRectMake((CGFloat)(setUp.logoXStart()), (CGFloat)(setUp.logoStart()), (CGFloat)(setUp.logoWidth()), (CGFloat)(setUp.logoHeight()))
        
        self.logoView.frame = CGRectMake((CGFloat)(setUp.figureXStart()), (CGFloat)(setUp.figureStart()), (CGFloat)(setUp.figureWidth()), (CGFloat)(setUp.figureHeight()))
        
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
        self.snapButton.frame = CGRectMake((CGFloat)(imageX[0]), (CGFloat)(imageY[0]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.snap.frame = CGRectMake((CGFloat)(buttonX[0]), (CGFloat)(buttonY[0]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
     
        
        self.whooImage.frame = CGRectMake((CGFloat)(imageX[1]), (CGFloat)(imageY[1]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.whooButtonReal.frame = CGRectMake((CGFloat)(buttonX[1]), (CGFloat)(buttonY[1]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.chaChingImage.frame = CGRectMake((CGFloat)(imageX[2]), (CGFloat)(imageY[2]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.chaChinaButton.frame = CGRectMake((CGFloat)(buttonX[2]), (CGFloat)(buttonY[2]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        //Second row
        self.clappingImage.frame = CGRectMake((CGFloat)(imageX[3]), (CGFloat)(imageY[3]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.clappingButton.frame = CGRectMake((CGFloat)(buttonX[3]), (CGFloat)(buttonY[3]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.laughImage.frame = CGRectMake((CGFloat)(imageX[4]), (CGFloat)(imageY[4]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.laughButton.frame = CGRectMake((CGFloat)(buttonX[4]), (CGFloat)(buttonY[4]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.doitImage.frame = CGRectMake((CGFloat)(imageX[5]), (CGFloat)(imageY[5]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.doitButton.frame = CGRectMake((CGFloat)(buttonX[5]), (CGFloat)(buttonY[5]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        //Third row
        self.yeehawImage.frame = CGRectMake((CGFloat)(imageX[6]), (CGFloat)(imageY[6]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.yeehawButton.frame = CGRectMake((CGFloat)(buttonX[6]), (CGFloat)(buttonY[6]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.onfleekImage.frame = CGRectMake((CGFloat)(imageX[7]), (CGFloat)(imageY[7]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.onfleekButton.frame = CGRectMake((CGFloat)(buttonX[7]), (CGFloat)(buttonY[7]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
        self.hornImage.frame = CGRectMake((CGFloat)(imageX[8]), (CGFloat)(imageY[8]), (CGFloat)(setUp.soundImageWidth()), (CGFloat)(setUp.soundImageHeight()))
        self.hornButton.frame = CGRectMake((CGFloat)(buttonX[8]), (CGFloat)(buttonY[8]), (CGFloat)(setUp.soundButtonWidth()), (CGFloat)(setUp.soundButtonHeight()))
        
    }

    
    
    @IBAction func ohSnapButton(sender: AnyObject) {
        self.ohsnap.play();
    }
    @IBAction func onFleekButton(sender: AnyObject) {
        self.onfleek.play();
    }
    @IBAction func YasButton(sender: AnyObject) {
        self.laugh.play();
    }
    
    @IBAction func whoohooButton(sender: AnyObject) {
        self.whoohoo.play();
    }
    
    @IBAction func cheeringButton(sender: AnyObject) {
        self.cheering.play(); //chaching
        
    }
    
    @IBAction func applauseButton(sender: AnyObject) {
        self.applause.play();
    }
    
    @IBAction func yeehawButton(sender: AnyObject) {
        self.yeehaw.play();
    }
    
    
    @IBAction func youcandoitButton(sender: AnyObject) {
        self.youcandoit.play();
    }
    
    @IBAction func Horn(sender: AnyObject) {
        self.horn.play();
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

