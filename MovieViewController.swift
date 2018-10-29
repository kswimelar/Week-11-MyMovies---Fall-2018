//
//  MovieViewController.swift
//  MyMovies
//
//  Created by cis290 on 10/30/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class MovieViewController: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "first"
            
        {
            
            let destination = segue.destination as!
                
            MovieViewController
            
            //Change to match you video filename in supporting files
            
            let termsPath:String? = Bundle.main.path(forResource: "trailer1", ofType: "mp4")!
            
            let url = NSURL(fileURLWithPath: termsPath!)
            
            
            
            destination.player = AVPlayer(url: url as URL)
            
            destination.player!.play()
            
        }
        
        if segue.identifier == "second"
            
        {
            
            let destination = segue.destination as!
                
            MovieViewController
            
            //Change to match you video filename in supporting files
            
            let termsPath:String? = Bundle.main.path(forResource: "trailer2", ofType: "mp4")!
            
            let url = NSURL(fileURLWithPath: termsPath!)
            
            destination.player = AVPlayer(url: url as URL)
            
            destination.player!.play()
            
        }
        
        if segue.identifier == "third"
            
        {
            
            let destination = segue.destination as!
                
            MovieViewController
            
            //Change to match you video filename in supporting files
            
            let termsPath:String? = Bundle.main.path(forResource: "trailer3", ofType: "mp4")!
            
            let url = NSURL(fileURLWithPath: termsPath!)
            
            destination.player = AVPlayer(url: url as URL)
            
            destination.player!.play()
            
        }
        
        
        
    }

}
