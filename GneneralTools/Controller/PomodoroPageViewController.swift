//
//  PomodoroPageViewController.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 10/08/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit
import AVFoundation


class PomodoroPageViewController: UIViewController {
    
    @IBOutlet weak var pomodoroLabel: UILabel!
    @IBOutlet weak var breakLabel: UILabel!
    var pomodoroCount = "25:00"
    var breakCount = "5:00"
    var player: AVAudioPlayer?
    
    var isPaused = true
    var isPausedBtn1 = true

    var second = 60
    var second2 = 60
    var minForPomodoro = 24
    var minForBreak = 4
    
    
    var timer = Timer()
    var timer2 = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - PomodoroSection
    
    
    @IBAction func playBtn(_ sender: UIButton) {
        
        if pomodoroLabel.text == pomodoroCount {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateMinForPomodoro), userInfo: nil, repeats: true)
        }
        
        
    }
    
    @IBAction func pauseBtn(_ sender: UIButton) {
        
        if isPaused {
            timer.invalidate()
            isPaused = false
            
        } else {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateMinForPomodoro), userInfo: nil, repeats: true)
            isPaused = true
            
        }
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        
        second = 60
        minForPomodoro = 24
        pomodoroLabel.text = pomodoroCount
        timer.invalidate()
        
    }
    
    
    //MARK: - BreakSection
    
    
    @IBAction func playBtn1(_ sender: UIButton) {
        
        if breakLabel.text == breakCount {
            timer2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateMinForBreak), userInfo: nil, repeats: true)
        }
        
    }
    
    @IBAction func pauseBtn1(_ sender: UIButton) {
        
        if isPausedBtn1 {
            timer2.invalidate()
            isPausedBtn1 = false
            
        } else {
            timer2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateMinForBreak), userInfo: nil, repeats: true)
            isPausedBtn1 = true
            
        }
    }
    @IBAction func resetBtn1(_ sender: UIButton) {
        second2 = 60
        minForBreak = 4
        breakLabel.text = breakCount
        timer2.invalidate()
        
    }
    
    //MARK: - TheFunctions
    @objc func updateMinForPomodoro() {
        if second > 0 {
            second -= 1
            pomodoroLabel.text = "\(minForPomodoro):\(second)"
            
            //                print(second)
        } else if minForPomodoro == 0 && second == 0 {
            
            pomodoroLabel.text = "\(minForPomodoro):\(second)"
            playSound(soundName: "3")
            
        } else if second == 0 {
            
            second = 59
            minForPomodoro -= 1
            
            pomodoroLabel.text = "\(minForPomodoro):\(second)"
            
        }
    }
    
    @objc func updateMinForBreak() {
        if second2 > 0 {
            second2 -= 1
            breakLabel.text = "\(minForBreak):\(second2)"
            
            //                print(second2)
        } else if minForBreak == 0 && second2 == 0 {
            
            breakLabel.text = "\(minForBreak):\(second2)"
            playSound(soundName: "3")
            
        } else if second2 == 0 {
            
            second2 = 59
            minForBreak -= 1
            
            breakLabel.text = "\(minForBreak):\(second2)"
            
        }
    }
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
