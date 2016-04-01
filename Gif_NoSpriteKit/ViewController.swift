//
//  ViewController.swift
//  Gif_NoSpriteKit
//
//  Created by Luis Berganza on 1/4/16.
//  Copyright © 2016 Luis Berganza. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var vistaImagenes: UIImageView!
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var nombreImagenes = ["1","2","3","4","5","6", "7","8","9","10","11"]
        
        var imagenes = [UIImage]()
        for i in 0..<nombreImagenes.count {
            imagenes.append(UIImage(named: nombreImagenes[i])!)
        }
        
        vistaImagenes.animationImages = imagenes
        vistaImagenes.animationDuration = 0.45
        vistaImagenes.startAnimating()
        
        playAudio()
    }
    
    func playAudio() {
        do {
            self.audioPlayer =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("GANGNAM STYLE", ofType: "mp3")!))
            self.audioPlayer!.play()
            
        } catch {
            print("Error")
        }
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

