//
//  ReesourcesDescriptionViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 4/1/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import AVFoundation

class ReesourcesDescriptionViewController: UIViewController {
    
    
    @IBAction func speakerClicked(_ sender: Any) {
    
    
    
     let utterance1 = AVSpeechUtterance(string: "eating disorders")
         utterance1.voice = AVSpeechSynthesisVoice(language: "en-GB")
         utterance1.rate = 0.5
         let synthesizer = AVSpeechSynthesizer()
         synthesizer.speak(utterance1)


         delayWithSeconds(3) {

             let utterance2 = AVSpeechUtterance(string: self.textView1.text!)
             utterance2.voice = AVSpeechSynthesisVoice(language: "en-GB")
             utterance2.rate = 0.5
             synthesizer.speak(utterance2)
         }
         self.delayWithSeconds(40) {

             let utterance3 = AVSpeechUtterance(string: self.testView2.text!)
             utterance3.voice = AVSpeechSynthesisVoice(language: "en-GB")
             utterance3.rate = 0.5
             synthesizer.speak(utterance3)
         }

         self.delayWithSeconds(70) {
             let utterance4 = AVSpeechUtterance(string: self.textView3.text!)
             utterance4.voice = AVSpeechSynthesisVoice(language: "en-GB")
             utterance4.rate = 0.5

             synthesizer.speak(utterance4)
         }

         
     }
     
    
    var data = ResourcesData()
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textView1: UITextView!
    
    @IBOutlet weak var testView2: UITextView!
    
    @IBOutlet weak var textView3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if newIndex < 4 {
        label.text = data.labelArray[newIndex]
        textView1.text = data.textViewArray1[newIndex]
        testView2.text = data.textArray2[newIndex]
        textView3.text = data.textArray3[newIndex]
        }      }
    
    
 func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
     DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
         completion()
     }
 }
 
}
