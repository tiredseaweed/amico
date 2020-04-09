//
//  tableVIewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 4/1/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//



import UIKit

var newIndex = 0

class VideoListScreen: UIViewController {
    
    var videos: [Video] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 90
        
        
        let number = Int.random(in: 0 ... 20)
        let quotes = Quotes()
        let alert = UIAlertController(title: "\(quotes.arrayOfQuotes[number])", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "<3", style: .default) { (action) in
            //            print("yee")
        }
        alert.view.tintColor = UIColor.init(red: 166.0/255.0, green: 177.0/255.0, blue: 225.0/255.0, alpha: 1.0)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        

    }
    
    
    func createArray() -> [Video] {
        
        let video1 = Video(title: "anxiety")
        let video2 = Video(title: "depression")
        let video3 = Video(title: "bpd")
        let video4 = Video(title: "ptsd")
        let video5 = Video(title: "eating disorders")
        let video6 = Video(title: "Other reosurces- ")
        
        return [video1, video2, video3, video4, video5, video6]
    }
}


extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        newIndex = indexPath.row
        
        if indexPath.row == 4 {
            performSegue(withIdentifier: "gotoED", sender: self)
            
            print("hello")
        }
        else if indexPath.row == 5{
            print("other page")
            performSegue(withIdentifier: "gotoLinks", sender: self)

        }
            
        else {
            performSegue(withIdentifier: "toResources", sender: self)
            // anxiety, depression, , bpd, ptsd
        }
        //             if indexPath.row == 5{
        //                print("hello")
        //            }
        
    }
    
}

