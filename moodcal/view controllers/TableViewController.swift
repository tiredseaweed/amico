////
////  TableViewController.swift
////  moodcal
////
////  Created by Uditi Sharma on 2/13/20.
////  Copyright © 2020 Uditi Sharma. All rights reserved.
////
//
//import UIKit
//var illnessArray = ["Depression","Anxiety","PTSD"]
//var illnessDescription1 =
//    [
//        "Depression is a mood disorder that involves a persistent feeling of sadness and loss of interest. It is different from the mood fluctuations that people regularly experience as a part of life.",
//        
//    "People with anxiety disorders have intensive, excessive, and persistent worry and fear about everyday situations. Anxiety is your body’s natural response to stress.",
//    
//    "PTSD is a mental health condition that's triggered by a terrifying event — either experiencing it or witnessing it"
//]
//
//
//var illnessSymptoms = [
//"Symptoms of depression include: Loss of interest in daily activities, Appetite or weight changes, Anger or irritability, Loss of energy, Self-loathing, Concentration problems",
//
//"Symptoms of anxiety include: increased heart rate, rapid breathing, restlessness, trouble concentrating difficulty falling asleep",
//
//"Symptoms of PTSD include: Intense feelings of distress when reminded of a tragic event, Extreme physical reactions to reminders of trauma, Flashbacks (feeling like the trauma is happening again), Avoiding certain activities, feelings, thoughts or places that remind you of the tragedy. "
//]
//
//
//var illnessCauses = [
//"Depression is an extremely complex disease. No one knows exactly what causes it, but it can occur for a variety of reasons. \nCauses for depression may include, but are not limites to: Abuse, Conflict, Death or a loss, Genetics, Substance abuse. ",
//
//"If feelings of anxiety are extreme, last for more than 6 months, and are interfering with your life, you may have an anxiety disorder.  \nPanic disorder, Phobic disorders, Stress from work and school, Stress in a personal relationship, Financial stress,  Stress from an emotional trauma , Stress from a serious medical illness, Side effect of medication, Use of an illicit drug, such as cocaine, Symptom of a medical illness.",
//
//"PTSD is caused by, but not limited to: serious accidents, physical or sexual assault, abuse, including childhood or domestic abuse, exposure to traumatic events, "
//]
//var myIndex = 0
//class TableViewController: UITableViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    // MARK: - Table view data source
//
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return illnessArray.count     }
//
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = illnessArray[indexPath.row]
//
//        return cell
//    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        myIndex = indexPath.row
//        performSegue(withIdentifier: "segue", sender: self)
//    }
//}
