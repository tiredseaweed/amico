//
//  BPDViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 3/25/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import AVFoundation

class BPDViewController: UIViewController {

    
    @IBOutlet weak var view1: UITextView!
    
    @IBOutlet weak var view2: UITextView!
    
    @IBOutlet weak var view3: UITextView!
    
    @IBAction func speakerClicked(_ sender: Any) {
        
        print("ed")
        
        let utterance1 = AVSpeechUtterance(string: "Bi polar disorder")
        utterance1.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance1.rate = 0.5
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance1)
        
        
        delayWithSeconds(2) {
            
            let utterance2 = AVSpeechUtterance(string: self.view1.text!)
            utterance2.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance2.rate = 0.5
            synthesizer.speak(utterance2)
        }
            self.delayWithSeconds(30) {
                
                let utterance3 = AVSpeechUtterance(string: self.view2.text!)
                utterance3.voice = AVSpeechSynthesisVoice(language: "en-GB")
                utterance3.rate = 0.5
                synthesizer.speak(utterance3)
        }
    
                self.delayWithSeconds(60) {
                    let utterance4 = AVSpeechUtterance(string: self.view3.text!)
                    utterance4.voice = AVSpeechSynthesisVoice(language: "en-GB")
                    utterance4.rate = 0.5
                    
                    synthesizer.speak(utterance4)
                }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.text = "Bi polar disorder is a mental disorder that causes unusual shifts in mood, energy, activity levels, concentration, and the ability to carry out day-to-day tasks. When you become depressed, you may feel sad or hopeless and lose interest or pleasure in most activities. When your mood shifts to mania or hypomania (less extreme than mania), you may feel euphoric or unusually irritable. These mood swings can affect sleep, energy, behavior and the ability to think clearly."
 
        view2.text = "types of bi-polar disorders include: \n Bipolar I Disorder— defined by manic episodes that last at least 7 days, or by manic symptoms that are so severe that the person needs immediate hospital care. Usually, depressive episodes occur as well, typically lasting at least 2 weeks. \n Bipolar II Disorder— defined by a pattern of depressive episodes and hypomanic episodes, but not the full-blown manic episodes that are typical of Bipolar I Disorder \n Cyclothymic disorder. You've had at least two years — or one year in children and teenagers — of many periods of hypomania symptoms and periods of depressive symptoms (though less severe than major depression). \n "
        view3.text = "Mania and hypomania are two distinct types of episodes, but they have the same symptoms. Mania is more severe than hypomania and causes more noticeable problems at work, school and social activities. Mania may also trigger a break from reality (psychosis). \n Symptoms of mania include \n Abnormally upbeat, jumpy or wired, increased energy or agitation, exaggerated sense of well-being and self-confidence (euphoria),decreased need for sleep, racing thoughts "
    }

    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    

}
