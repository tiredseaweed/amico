
//
//  WebPAgeViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 4/5/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import WebKit
class WebPAgeViewController: UIViewController {
    
    @IBOutlet weak var myWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url1 = URL(string: "https://afsp.org/about-suicide/")
        let url2 = URL(string: "https://www.thetrevorproject.org/")
        let url3 = URL(string: "https://www.translifeline.org/")
        let url4 = URL(string: "https://www.khanacademy.org/college-careers-more/personal-finance")
        let urls =  [url1, url2, url3, url4]
        myWebView.load(URLRequest(url: urls[theIndexPath]!))
        
    }
    
    
}
