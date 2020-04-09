//
//  DescriptionViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 3/27/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import WebKit

class DescriptionViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var webView2: WKWebView!
    
    @IBOutlet weak var webView: WKWebView!
    var myIndexPath = myIndex
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = thingsDesc[myIndexPath]
        textView.isEditable = false
        // Meditation", "Yoga", "Reading", "Journaling", "Cooking"
        let videoCodes1 = ["inpok4MKVLM","4pKly2JojMw", "xqMozc4K4pg", "F13eweX25gY", "X5oD_thIk3c", "-C-ic2H24OU"]
        getVideo(videoCode: "\(videoCodes1[myIndexPath])")
        
        let videoCodes2 = ["CN-_zzHpcdM","v7AYKMP6rOE","lIW5jBrrsS0", "4EHrQMR6qko", "TCVTOa01uN8", "XNdsPW0VGZA"]
        getVideo2(videoCode2: videoCodes2[myIndexPath])
    }
    func getVideo(videoCode:String)
    {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        webView.load(URLRequest(url: url!))

    }

    func getVideo2(videoCode2: String) {
        let url2 = URL(string: "https://www.youtube.com/embed/\(videoCode2)")
        webView2.load(URLRequest(url: url2!))

    }

}
