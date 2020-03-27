//
//  chartsViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 2/10/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import Charts
import CoreData

class chartsViewController: UIViewController {
    var chartArray = [0]
    var chartarray1 = [0]
    @IBOutlet weak var chart: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        updateGraph()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Update graph
    func updateGraph() {
        
        
        let number = Numbers(context: PersistenceService.context)
        //        number.numberInArray = Int16(numberEnteredInSlider)
        //        PersistenceService.saveContext()
        print("hello")
        print(chartArray)
//        print(chartarray1)
        print(number.numberInArray)
        var numbers  = [Numbers]() // Where Locations = your NSManaged Class
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Numbers")
        do {try  numbers = PersistenceService.context.fetch(fetchRequest) as! [Numbers]
            for number in numbers {
                if number.numberInArray != 0{
                chartArray.append(Int(Double(number.numberInArray)))
                    chartarray1.append(chartArray.last ?? 0)
                }


            }
        }catch {
            print("oopsy daisy")
        }
        
        
        var lineChartEntry  = [ChartDataEntry]() //this is the Array that will eventually be displayed on the graph.
        
        for i in 0..<chartarray1.count {
            //
            
            let value = ChartDataEntry(x: Double(i), y: Double(chartarray1[i]))
            // here we set the X and Y status in a data chart entry
            
            lineChartEntry.append(value)
            // here we add it to the data set
        }
        
        let line1 = LineChartDataSet(entries: lineChartEntry, label: "Number") //Here we convert lineChartEntry to a LineChartDataSet
        
        line1.colors = [NSUIColor.blue] //Sets the colour to blue
        
        
        let data = LineChartData() //This is the object that will be added to the chart
        
        data.addDataSet(line1) //Adds the line to the dataSet
        
        
        chart.data = data //finally - it adds the chart data to the chart and causes an update
        
        chart.chartDescription?.text = "My awesome chart" // Here we set the description for the graph
        
        
    }
    
    
    //    func fetchCoreDataInArray() {
    //}
}

