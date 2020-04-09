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
//import Charts
import CoreLocation


class mainViewController: UIViewController {
    var locationManager = CLLocationManager()
    var numberEnteredInSlider = 0
    var testArray = [Double]()
    var phoneNumber =  0
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }
    //MARK:- ViewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentCountryToCallHelp()
        
    }
    
    @IBOutlet weak var slideToCurrentMood: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    // MARK:- Log button
    
    @IBAction func logMood(_ sender: UIButton) {
        
        
        
        
        let number = Numbers(context: PersistenceService.context)
        number.numberInArray = Int16(numberEnteredInSlider)
        PersistenceService.saveContext()
        //        testArray.append(Int(Double(number.numberInArray)))
        print(testArray)
        var numbers  = [Numbers]() // Where Numbers =  NSManaged Class
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Numbers")
        do {try  numbers = PersistenceService.context.fetch(fetchRequest) as! [Numbers]
            for number in numbers {
                print(number.numberInArray)
                testArray.append(Double(number.numberInArray))
                
            }
        }catch {
            print("error")
        }
        
        
        /*
         pseudocode-
         if testArray.conut > 31
         barChartView.xAxis.labelCount  += 1
         
         let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
         let currentMonth =
         chart.xAxis.valueFormatter = IndexAxisValueFormatter(values:months)
         chart.xAxis.granularity = 1
         
         
         */
        
        
        
        if moodLabel.text == "suicidal" {
            
            let alert = UIAlertController(title: "call helpline?", message: "would you like to call a suicide helpline. we love you.", preferredStyle: .alert)
            
            let yesAction = UIAlertAction(title: "yes", style: .default) { (action) in
                self.callPolice(phoneNumber: self.phoneNumber)
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
        }
        
        if 15 ... 30 ~= sender.value {
            moodLabel.text = "v sad"
            numberEnteredInSlider = 2
        }
        
        if 30 ... 45 ~= sender.value {
            moodLabel.text = "sad"
            numberEnteredInSlider = 3
        }
        
        if 45 ... 55 ~= sender.value {
            moodLabel.text = "normal"
            numberEnteredInSlider = 4
        }
        
        if 55 ... 75 ~= sender.value {
            moodLabel.text = "happy"
            numberEnteredInSlider = 5
        }
        
        if 75 ... 100 ~= sender.value {
            moodLabel.text = "v happy"
            numberEnteredInSlider = 6
            
        }
    }
    
    // MARK:- ChartsView!
    
    //    @IBOutlet weak var barChartView: BarChartView!
    
    func setChart() {
        //
        //        var dataEntries: [BarChartDataEntry] = []
        //
        //
        //        for i in 0..<testArray.count {
        //
        //            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(testArray[i]))
        //
        //            dataEntries.append(dataEntry)
        //        }
        //
        //        let chartDataSet = BarChartDataSet(entries: dataEntries, label: "Visitor count")
        //
        //        let chartData = BarChartData(dataSet: chartDataSet)
        //        print(dataEntries)
        //        barChartView.data = chartData
        //
    }
    
    //MARK:- Calling
    
    func getCurrentCountryToCallHelp() {
        
        let locale = Locale.current
        var localeString = "\(locale.identifier)"
        
        //        print(localeString)
        if localeString == "en_US" {
            phoneNumber = 911
        }
        if localeString == "gv_GB" {
            phoneNumber = 999
        }
        if localeString == "en_AE" {
            phoneNumber = 999
        }
        
        if localeString == "fr_FR"  {
            phoneNumber = 112
        }
        if localeString ==  "de_DE" {
            phoneNumber = 112
        }
        if localeString ==  "fr_BE" {
            phoneNumber = 112
        }
        if localeString ==  "de_BE" {
            phoneNumber = 112
        }
        if localeString ==  "nl_NL" {
            phoneNumber = 112
        }
        if localeString ==  "kl_GL" {
            phoneNumber = 112
        }
        if localeString ==  "da_DK" {
            phoneNumber = 112
        }
        if localeString ==  "is_IS" {
            phoneNumber = 112
        }
        if localeString ==  "bg_BG" {
            phoneNumber = 112
        }
        if localeString ==  "de_AT" {
            phoneNumber = 112
        }
        if localeString ==  " fi_FI" {
            phoneNumber = 112
        }
        if localeString ==  "en_ZA" {
            phoneNumber = 107
        }
        if localeString ==  "ar_LB" {
            phoneNumber = 112
        }
        if localeString ==  "ar_AE" {
            phoneNumber = 999
        }
        
        if localeString ==  "ka_GE" {
            phoneNumber = 112
        }
        if localeString ==  "en_IN" {
            phoneNumber = 112
        }
        if localeString ==  "ig_NG" {
            phoneNumber = 112
        }
        if localeString ==  "ar_SY" {
            phoneNumber = 112
        }
        if localeString ==  "id" {
            phoneNumber = 112
        }
        if localeString ==  "ur_PK" {
            phoneNumber = 112
        }
        if localeString ==  "en_PK" {
            phoneNumber = 112
        }
        
        if localeString ==  "pt_PT" {
            phoneNumber = 112
        }
        if localeString ==  "ru" {
            phoneNumber = 102
        }
        if localeString ==  "tr_TR" {
            phoneNumber = 112
        }
        if localeString ==  "sv_SE" {
            phoneNumber = 112
        }
        if localeString ==  "en_AU" {
            phoneNumber = 000
        }
        if localeString ==  "fr_CA" {
            phoneNumber = 911
        }
        if localeString ==  "en_CA" {
            phoneNumber = 911
        }
        
        if localeString ==  "es_MX" {
            phoneNumber = 911
        }
        if localeString ==  "pt_BR" {
            phoneNumber = 190
        }
        if localeString ==  "es_VE" {
            phoneNumber = 911
        }
        if localeString ==  "en_HK" {
            phoneNumber = 999
        }
        if localeString ==  "es_AR" {
            phoneNumber = 911
        }
        if localeString ==  "en_IE" {
            phoneNumber = 112
        }
        
    }
    
    func callPolice(phoneNumber: Int) {
        if let url = NSURL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(url as URL) {
            UIApplication.shared.openURL(url as URL)
        }
    }
    
    
    
    //MARK:- date
    //    func getDate() {
    //        let date = NSDate()
    //        let calendar = NSCalendar.current
    //        let components = calendar.dateComponents([.day , .month , .year], from: date as Date)
    //        let year =  components.year
    //        let month = components.month
    //        let day = components.day
    //
    //    }
    
    //
    //        func addAlertView() {
    //
    //            let number = Int.random(in: 0 ... 20)
    //            let quotes = Quotes()
    //            let alert = UIAlertController(title: "\(quotes.arrayOfQuotes[number])", message: "", preferredStyle: .alert)
    //            let okAction = UIAlertAction(title: "<3", style: .default) { (action) in
    //    //            print("yee")
    //            }
    //            alert.view.tintColor = UIColor.init(red: 45.0/255.0, green: 187.0/255.0, blue: 135.0/255.0, alpha: 1.0)
    //
    //            alert.addAction(okAction)
    //            present(alert, animated: true, completion: nil)
    //        }
    //}
    ////
}
