//
//  ViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 2/7/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//
import UIKit
import CoreData
import Foundation

class mainViewController: UIViewController {
    
    var numberEnteredInSlider = 0
    var testArray = [0]
    //MARK: ViewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var slideToCurrentMood: UILabel!
    
    // MARK:- Log button
    
    @IBAction func logMood(_ sender: UIButton) {
        
        let number = Numbers(context: PersistenceService.context)
        number.numberInArray = Int16(numberEnteredInSlider)
        PersistenceService.saveContext()
        print("hello")
        print(testArray)
        print(number.numberInArray)
                testArray.append(Int(Double(number.numberInArray)))
        
                    var numbers  = [Numbers]() // Where Locations = your NSManaged Class
                    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Numbers")
                    do {try  numbers = PersistenceService.context.fetch(fetchRequest) as! [Numbers]
                    for number in numbers {
                        testArray.append(Int(number.numberInArray))
                    }
                    }catch {
                        print("oopsy daisy")
                    }

        if moodLabel.text == "suicidal" {
            let alert = UIAlertController(title: "call helpline", message: "would you like to call a suicide helpline. we love you.", preferredStyle: .alert)
            let yesAction = UIAlertAction(title: "yes", style: .default) { (action) in
                print("yee")
            }
            let noAction = UIAlertAction(title: "no", style: .default) { (action) in
                print("nope")
            }
            
            alert.addAction(yesAction)
            alert.addAction(noAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBOutlet weak var moodLabel: UILabel!
    
    //MARK: slider
    
    @IBAction func slider(_ sender: UISlider) {
        
        
        if 0 ... 15 ~= sender.value {
            moodLabel.text = "suicidal"
            numberEnteredInSlider = 1
            //            arrayOfNums.append(numberEnteredInSlider)
        }
        
        if 15 ... 30 ~= sender.value {
            moodLabel.text = "v sad"
            numberEnteredInSlider = 2
            //            arrayOfNums.append(numberEnteredInSlider)
            
        }
        
        if 30 ... 45 ~= sender.value {
            moodLabel.text = "sad"
            numberEnteredInSlider = 3
            //            arrayOfNums.append(numberEnteredInSlider)
            
        }
        
        if 45 ... 55 ~= sender.value {
            moodLabel.text = "normal"
            numberEnteredInSlider = 4
            //            arrayOfNums.append(numberEnteredInSlider)
            
        }
        
        if 55 ... 75 ~= sender.value {
            moodLabel.text = "happy"
            numberEnteredInSlider = 5
            //            arrayOfNums.append(numberEnteredInSlider)
            
        }
        
        
        if 75 ... 100 ~= sender.value {
            moodLabel.text = "v happy"
            numberEnteredInSlider = 6
            //            arrayOfNums.append(numberEnteredInSlider)
            
        }
    }
    
    // MARK:- Core data
    
    //    func saveData(){
    //
    //        let number = Numbers(context: PersistenceService.context)
    //        number.numberInArray = Int16(numberEnteredInSlider)
    //        PersistenceService.saveContext()
    //
    //    }
    
}
