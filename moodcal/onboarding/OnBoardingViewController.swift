//
//  OnBoardingViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 4/8/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import paper_onboarding
class OnBoardingViewController: UIViewController, PaperOnboardingDelegate, PaperOnboardingDataSource {
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        let onBoardItem1: OnboardingItemInfo = OnboardingItemInfo(informationImage: UIImage(named: "rocket")!, title: "Welcome to Amico!", description: "congrats! thank you for installing amico:) \n i am very excited to welcome you to your self care and self love jouney", pageIcon: UIImage(named: "rocket")!, color:  UIColor.init(red: 166.0/255.0, green: 177.0/255.0, blue: 225.0/255.0, alpha: 1.0), titleColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), descriptionColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), titleFont: UIFont(name: "AvenirNext-Bold", size: 25)!, descriptionFont: UIFont(name: "AvenirNext-Regular", size: 18)!)
        
        let onBoardItem2: OnboardingItemInfo = OnboardingItemInfo(informationImage: UIImage(named: "notification")!, title: "mood tracker", description: "enter how you are feeling from the slider. this shall only be done once a day!", pageIcon: UIImage(named: "rocket")!, color:  UIColor.init(red: 166.0/255.0, green: 177.0/255.0, blue: 225.0/255.0, alpha: 1.0), titleColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), descriptionColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), titleFont: UIFont(name: "AvenirNext-Bold", size: 25)!, descriptionFont: UIFont(name: "AvenirNext-Regular", size: 18)!)
        
        let onBoardItem3: OnboardingItemInfo = OnboardingItemInfo(informationImage: UIImage(named: "notification")!, title: "self care", description: "on the secind tab, you get to see the self care page. over here, you get little guides on how to practive self care! \n by swiping right, you can log the activity. the log can be viewed on the top right corner.", pageIcon: UIImage(named: "rocket")!, color:  UIColor.init(red: 166.0/255.0, green: 177.0/255.0, blue: 225.0/255.0, alpha: 1.0), titleColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), descriptionColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), titleFont: UIFont(name: "AvenirNext-Bold", size: 25)!, descriptionFont: UIFont(name: "AvenirNext-Regular", size: 18)!)

        let onBoardItem4: OnboardingItemInfo = OnboardingItemInfo(informationImage: UIImage(named: "notification")!, title: "resources", description: "on the last tab, you get multiple resources to cope up with any mental illnesses you suffer with. \n inside other resources, there are webistes+numbers to helplines(us only). don't be hesistant to ask for help. take care<3", pageIcon: UIImage(named: "rocket")!, color:  UIColor.init(red: 166.0/255.0, green: 177.0/255.0, blue: 225.0/255.0, alpha: 1.0), titleColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), descriptionColor:  UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), titleFont: UIFont(name: "AvenirNext-Bold", size: 25)!, descriptionFont: UIFont(name: "AvenirNext-Regular", size: 18)!)

        return [onBoardItem1, onBoardItem2, onBoardItem3, onBoardItem4][index]
        
    }
    
    func onboardingItemsCount() -> Int {
        4
    }
    
    @IBOutlet var onboardingView: onboardingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingView.dataSource = self
        onboardingView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 0 {
            
            UIView.animate(withDuration: 0.2, animations: {

                
            })
            
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 1 {
            UserDefaults.standard.set(true, forKey: "hasLaunched")

            UIView.animate(withDuration: 5, animations: {
                print("show button")
            self.delayWithSeconds(15){
                    self.performSegue(withIdentifier: "gotoMain", sender: self)
                }
            })
        }}
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    
}
