//
//  ViewController.swift
//  Xylophone
//
//  Created by Сымбат Майданова on 24.01.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    
    @IBOutlet weak var dButton: UIButton!
    
    @IBOutlet weak var fButton: UIButton!
    
    @IBOutlet weak var gButton: UIButton!
    
    @IBOutlet weak var aButton: UIButton!
    
    
    @IBOutlet weak var bButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitlesForButtons()
        // Do any additional setup after loading the view.
    }
    
    private func setTitlesForButtons() {
        cButton.setTitle("C", for: .normal)
        dButton.setTitle("D", for: .normal)
        eButton.setTitle("E", for: .normal)
        fButton.setTitle("F", for: .normal)
        gButton.setTitle("G", for: .normal)
        aButton.setTitle("A", for: .normal)
        bButton.setTitle("B", for: .normal)
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if let title = sender.currentTitle {
            print("Start")
            sender.alpha = 0.5
            playSound(title)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                //Bring's sender's opacity back up to fully opaque.
                sender.alpha = 1.0
                print("End")
            }
        }
    }
    
    
//    @IBAction func keyPressed(_ sender: UIButton) {
//        if let title = sender.currentTitle { playSound(title)}
//    }
        func playSound(_ title: String) {
                    guard let url = Bundle.main.url(forResource: title, withExtension: "wav") else { return }
                    player = try! AVAudioPlayer(contentsOf: url)
                    player!.play()
                }

        }
        
