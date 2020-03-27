//
//  DepressionVC.swift
//  moodcal
//
//  Created by Uditi Sharma on 3/20/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import AVFoundation
import  AVKit
class DepressionVC: UIViewController {
    
    
    @IBOutlet weak var depressionLabel: UILabel!
    @IBOutlet weak var depressionDescription: UITextView!
    @IBOutlet weak var depressionCause: UITextView!
    @IBOutlet weak var depressionSymptoms: UITextView!
    @IBOutlet weak var speakerButton: UIBarButtonItem!
    
    
    @IBAction func speakerBttnPressed(_ sender: Any) {
        
        print("dv")
        
        let utterance1 = AVSpeechUtterance(string: depressionLabel.text!)
        utterance1.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance1.rate = 0.5
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance1)
        
        
        delayWithSeconds(2) {
            
            let utterance2 = AVSpeechUtterance(string: self.depressionDescription.text!)
            utterance2.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance2.rate = 0.5
            synthesizer.speak(utterance2)
        }
            self.delayWithSeconds(15) {
                
                let utterance3 = AVSpeechUtterance(string: self.depressionCause.text!)
                utterance3.voice = AVSpeechSynthesisVoice(language: "en-GB")
                utterance3.rate = 0.5
                synthesizer.speak(utterance3)
        }
                
                self.delayWithSeconds(40) {
                    let utterance4 = AVSpeechUtterance(string: self.depressionSymptoms.text!)
                    utterance4.voice = AVSpeechSynthesisVoice(language: "en-GB")
                    utterance4.rate = 0.5
                    
                    synthesizer.speak(utterance4)
                    
                    
                }

        

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        loadText()
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func loadText() {
        
        depressionLabel.text = "Despression"
        depressionDescription.isEditable = false
        depressionDescription.text = "Depression is a mood disorder that involves a persistent feeling of sadness and loss of interest. It is different from the mood fluctuations that people regularly experience as a part of life."
        
        
        depressionCause.text = "Depression is an extremely complex disease. No one knows exactly what causes it, but it can occur for a variety of reasons. \nCauses for depression may include, but are not limites to: Abuse, Conflict, Death or a loss, Genetics, Substance abuse."
        depressionCause.isEditable = false
        
        // illnessSymptoms
        depressionSymptoms.text = "Symptoms of depression include: Loss of interest in daily activities, Appetite or weight changes, Anger or irritability, Loss of energy, Self-loathing, Concentration problems"
        depressionSymptoms.isEditable = false
        
    }
    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }

}
