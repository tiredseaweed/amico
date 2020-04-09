//
//  PopupTableViewController.swift
//  moodcal
//
//  Created by Uditi Sharma on 3/30/20.
//  Copyright © 2020 Uditi Sharma. All rights reserved.
//

import UIKit
import CoreData
class PopupTableViewController: UITableViewController {
var recents = [Recents]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 69
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell2")

        
        let fetchRequest: NSFetchRequest<Recents> = Recents.fetchRequest()

        do {
            let recents = try PersistenceService2.context.fetch(fetchRequest)
            self.recents = recents

        } catch {}
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recents.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        
        var reversedArray  = [Recents]()

        for arrayIndex in stride(from: recents.count - 1, through: 0, by: -1) {
            reversedArray.append(recents[arrayIndex])
        }

        
        cell.textLabel?.text = reversedArray[indexPath.row].recentlyChecked
        return cell
    }


}
