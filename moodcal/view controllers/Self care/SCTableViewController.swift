//
//  SCTableViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 3/27/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//
import Foundation
import UIKit
import CoreData
import SwipeCellKit

//MARK:- Variables
var things = ["Meditation", "Yoga", "Reading", "Journaling", "Cooking", "Cleaning"]

var myIndex = 0
var thingsDesc = ["Most first-time meditators find it strange to sit in  silence, to sit with their innermost thoughts and feelings, and   do nothing — the very things that, funnily enough, the mind tends to resist. To a beginner, meditation might initially feel a little alien, perhaps even daunting, but that’s okay.\n Meditation can give you a sense of calm, peace and balance that can benefit both your emotional well-being and your overall health.",
                  "Yoga is a group of physical, mental and social practices. \n The beauty of yoga is that you don’t have to be a yogi or yogini to reap the benefits. Whether you are young or old, overweight or fit, yoga has the power to calm the mind and strengthen the body.",
                  "Picking up reading as a hobby can be a very daunting experience, but a truly eye opening one. Good luck for your jouney into the world of reading. ",
                  "Journaling! It's a mindful practice that's been shown to reduce stress and anxiety, so naturally there is massive pressure to be good at it. \n When you put your thoughts out on paper, you subconsciously unravel your web of thoughts. Every line you write is a piece of that mental thread, and the more you write, the more of the web you've untangled. \n There are many different types of journaling, such as: bullet journaling, art journaling, or any other type of journaling. You could choose any type which makes you happy and helps you relax:) ",
                  "Cooking is the art, technology, science and craft of preparing food for consumption. You don't have to cook a 7 course meal, making a simple avacado toast can bring you the joy of cooking ",
                  "Cleaning your workspace/house can be a time consuming, yet a very fulfilling experience. Check out Marie Kondo on netflix for inspiration!"
]

//MARK:- SCTableViewController

class SCTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    var recents = [Recents]()
    
    @IBAction func gotoRecents(_ sender: Any) {
        performSegue(withIdentifier: "gotoRecents", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90


        let view = UIView()
        
        view.backgroundColor = UIColor.white
        self.navigationController?.view.addSubview(view)

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return things.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SwipeTableViewCell
        
        
        cell.delegate = self
        cell.textLabel?.text = things[indexPath.row]
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let saveAction = SwipeAction(style: .destructive, title: "Check") { action, indexPath in
            
            print("checked!")
            let recent = Recents(context: PersistenceService2.context)
            recent.recentlyChecked = "\(things[indexPath.row])"
            PersistenceService2.saveContext()
            self.recents.append(recent)
        }
        
        // customize the action appearance
        
        
        return [saveAction]
    }
    
}
