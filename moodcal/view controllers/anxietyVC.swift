//
//  anxietyVC.swift
//  moodcal
//
//  Created by Uditi Sharma on 3/20/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//


import AVFoundation
import UIKit

class AnxietyViewController: UIViewController {
    @IBOutlet weak var illnessLabel: UILabel!
    
    @IBOutlet weak var illnessDescriptionLabel: UITextView!
    
    @IBOutlet weak var illnessCausesView: UITextView!
    
    @IBOutlet weak var illnessSymptomsView: UITextView!
    
    
    
    @IBAction func speakerPressed(_ sender: Any) {
        print("anxiety voice")
        
        let utterance1 = AVSpeechUtterance(string: illnessLabel.text!)
        utterance1.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance1.rate = 0.5
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance1)
        
        
        delayWithSeconds(2) {
            
            let utterance2 = AVSpeechUtterance(string: self.illnessDescriptionLabel.text!)
            
            utterance2.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance2.rate = 0.5
            synthesizer.speak(utterance2)
        }
            self.delayWithSeconds(15) {
                
                let utterance3 = AVSpeechUtterance(string: self.illnessCausesView.text!)
                
                utterance3.voice = AVSpeechSynthesisVoice(language: "en-GB")
                utterance3.rate = 0.5
                synthesizer.speak(utterance3)
        }
                self.delayWithSeconds(40) {
                    let utterance4 = AVSpeechUtterance(string: self.illnessSymptomsView.text!)
                    
                    utterance4.voice = AVSpeechSynthesisVoice(language: "en-GB")
                    utterance4.rate = 0.5
                    
                    synthesizer.speak(utterance4)
                    
                    
                }
               
    }
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        illnessLabel.text = "Anxiety"
        illnessDescriptionLabel.isEditable = false
        illnessDescriptionLabel.text = "People with anxiety disorders have intensive, excessive, and persistent worry and fear about everyday situations. Anxiety is your body’s natural response to stress."
        
        
        illnessCausesView.text = "If feelings of anxiety are extreme, last for more than 6 months, and are interfering with your life, you may have an anxiety disorder.  \nPanic disorder, Phobic disorders, Stress from work and school, Stress in a personal relationship, Financial stress,  Stress from an emotional trauma , Stress from a serious medical illness, Side effect of medication, Use of an illicit drug, such as cocaine, Symptom of a medical illness."
        illnessCausesView.isEditable = false
        
        // illnessSymptoms
        illnessSymptomsView.text = "Symptoms of anxiety include: increased heart rate, rapid breathing, restlessness, trouble concentrating difficulty falling asleep"
        illnessSymptomsView.isEditable = false
        
        
    }
    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
}
