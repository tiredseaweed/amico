//
//  resourceDescriptionViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 2/13/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import AVFoundation

import UIKit

class AnxietyViewController: UIViewController {
    @IBOutlet weak var illnessLabel: UILabel!
 
    @IBOutlet weak var illnessDescriptionLabel: UITextView!
    
    @IBOutlet weak var illnessCausesView: UITextView!
    
    @IBOutlet weak var illnessSymptomsView: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let utterance = AVSpeechUtterance(string: "Hello world")
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance.rate = 0.0001

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)

        
        illnessLabel.text = "text"
        illnessDescriptionLabel.isEditable = false 
        illnessDescriptionLabel.text = "text"
        
        
        illnessCausesView.text = "text"
        illnessCausesView.isEditable = false
        
        // illnessSymptoms
        illnessSymptomsView.text = "text"
        illnessSymptomsView.isEditable = false

        
    }
    


}
