//
//  ResourceLinksViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 4/5/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit

let cellTextArray = ["AFSP", "Trevor project: lgbtq+ youth", "translifeline", "personal finance"]
 var  theIndexPath = 0
var numberArray = [18002738255, 18664887386, 5107711417]
class ResourceLinksViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self 
        // Do any additional setup after loading the view.
    }
    
}


extension ResourceLinksViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTextArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "myNewCell") 
        cell?.textLabel?.text = cellTextArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        theIndexPath = indexPath.row 
        if indexPath.row == 0
        {
            showAlert(text: cellTextArray[theIndexPath], phoneNum: numberArray[theIndexPath])
            
        }
        if indexPath.row == 1 {
            showAlert(text: cellTextArray[theIndexPath], phoneNum: numberArray[theIndexPath])
        }
        if indexPath.row == 2 {
            showAlert(text: cellTextArray[theIndexPath], phoneNum: numberArray[theIndexPath])
        }
        if indexPath.row == 3 {
            self.performSegue(withIdentifier: "gotoWebPage", sender: self)

        }
    }
    
    func showAlert(text: String, phoneNum: Int) {
        let alert = UIAlertController(title: "Talk to \(text)", message: "would you like to call a suicide helpline, or visit their website", preferredStyle: .alert)
        
        let websiteAction = UIAlertAction(title: "GoToWebsite", style: .default) { (action) in
            print("website ")
            self.performSegue(withIdentifier: "gotoWebPage", sender: self)
        }
        let callAction = UIAlertAction(title: "Call", style: .default) { (action) in
            print("call")
            if let url = NSURL(string: "tel://\(phoneNum)"), UIApplication.shared.canOpenURL(url as URL) {
                UIApplication.shared.openURL(url as URL)
            }

            
        }
        
        alert.addAction(websiteAction)
        alert.addAction(callAction)
        
        present(alert, animated: true, completion: nil)

    }
    
}
