//
//  EatingDisordersViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 4/2/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import AVFoundation

class EatingDisordersViewController: UIViewController {

  
    @IBOutlet weak var theOverView: UITextView!
    
    @IBOutlet weak var anorexiaVie: UITextView!
    
    @IBOutlet weak var bulimiaView: UITextView!
    
    @IBOutlet weak var bingeEatingView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        theOverView.text = "Eating disorders are serious conditions related to persistent eating behaviors that negatively impact your health, your emotions and your ability to function in important areas of life. Cultural idealization of thinness is believed to largely contribute to eating disorders."
        theOverView.isEditable = false
        anorexiaVie.text = "Anorexia nervosa \n potentially life-threatening eating disorder characterized by an abnormally low body weight, intense fear of gaining weight, and a distorted perception of weight or shape. \n Symptoms very restricted eating patternsan intense fear of gaining weight or persistent behaviors to avoid gaining weight, despite being underweight a heavy influence of body weight or perceived body shape on self-esteema distorted body image, including denial of being seriously underweight"
        anorexiaVie.isEditable = false

        bulimiaView.text = "When you have bulimia, you have episodes of bingeing and purging that involve feeling a lack of control over your eating.\n During these episodes, you typically eat a large amount of food in a short time, and then try to rid yourself of the extra calories in an unhealthy way. Because of guilt, shame and an intense fear of weight gain from overeating, you may force vomiting or you may exercise too much or use other methods, such as laxatives, to get rid of the calories. "
        bulimiaView.isEditable = false

        bingeEatingView.text = "People with binge eating disorder do not restrict calories or use purging behaviors, such as vomiting or excessive exercise, to compensate for their binges.\n Symptoms include eating large amounts of foods rapidly, in secret and until uncomfortably full, despite not feeling hungry, feeling a lack of control during episodes of binge eating, feelings of distress, such as shame, disgust, or guilt, when thinking about the binge eating behavior. "
        bingeEatingView.isEditable = false


        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func speakerPressed(_ sender: Any) {
    
    let utterance1 = AVSpeechUtterance(string: "eating disorders")
        utterance1.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance1.rate = 0.5
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance1)
        
        
        delayWithSeconds(2) {
            
            let utterance2 = AVSpeechUtterance(string: self.theOverView.text!)
            utterance2.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance2.rate = 0.5
            synthesizer.speak(utterance2)
        }
        self.delayWithSeconds(30) {
            
            let utterance3 = AVSpeechUtterance(string: self.anorexiaVie.text!)
            utterance3.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance3.rate = 0.5
            synthesizer.speak(utterance3)
        }
        
        self.delayWithSeconds(60) {
            let utterance4 = AVSpeechUtterance(string: self.bulimiaView.text!)
            utterance4.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance4.rate = 0.5
            
            synthesizer.speak(utterance4)
        }
        
        self.delayWithSeconds(60) {
            let utterance4 = AVSpeechUtterance(string: self.bingeEatingView.text!)
            utterance4.voice = AVSpeechSynthesisVoice(language: "en-GB")
            utterance4.rate = 0.5
            
            synthesizer.speak(utterance4)
        }
        
    }
    
            
    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    
    
}
