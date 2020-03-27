//
//  PtsdVC.swift
//  moodcal
//
//  Created by Uditi Sharma on 3/20/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import AVFoundation
class PtsdVC: UIViewController {

    
    @IBOutlet weak var ptsdLabel: UILabel!
    
    @IBOutlet weak var ptsdDescription: UITextView!
    @IBOutlet weak var ptsdSymptoms: UITextView!
    @IBOutlet weak var ptsdCauses: UITextView!
    
    
    
    @IBAction func speakerPressed(_ sender: Any) {
        
        
        let utterance1 = AVSpeechUtterance(string: ptsdLabel.text!)
        utterance1.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance1.rate = 0.5
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance1)
        
        
        delayWithSeconds(2) {
            
            let utterance2 = AVSpeechUtterance(string: self.ptsdDescription.text!)
            utterance2.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance2.rate = 0.5
            synthesizer.speak(utterance2)
        }
            self.delayWithSeconds(10) {
                
                let utterance3 = AVSpeechUtterance(string: self.ptsdSymptoms.text!)
                utterance3.voice = AVSpeechSynthesisVoice(language: "en-GB")
                utterance3.rate = 0.5
                synthesizer.speak(utterance3)
                
        }
                self.delayWithSeconds(40) {
                    let utterance4 = AVSpeechUtterance(string: self.ptsdCauses.text!)
                    utterance4.voice = AVSpeechSynthesisVoice(language: "en-GB")
                    utterance4.rate = 0.5
                    
                    synthesizer.speak(utterance4)
                    
                    
                }

            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadPTSDText()
        // Do any additional setup after loading the view.
    }
    


    func loadPTSDText() {
        
        ptsdLabel.text = "PTSD"
        ptsdDescription.text = "PTSD is a mental health condition that's triggered by a terrifying event — either experiencing it or witnessing it"
        ptsdDescription.isEditable = false

        
        ptsdCauses.text = "PTSD is caused by, but not limited to: serious accidents, physical or sexual assault, abuse, including childhood or domestic abuse, exposure to traumatic events"
        ptsdCauses.isEditable = false
        
        // illnessSymptoms
        ptsdSymptoms.text = "Symptoms of PTSD include: Intense feelings of distress when reminded of a tragic event, Extreme physical reactions to reminders of trauma, Flashbacks (feeling like the trauma is happening again), Avoiding certain activities, feelings, thoughts or places that remind you of the tragedy."
        ptsdSymptoms.isEditable = false

        
    }
    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
}
