//
//  Recents+CoreDataProperties.swift
//  
//
//  Created by Uditi Sharma on 3/29/20.
//
//

import Foundation
import CoreData


extension Recents {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recents> {
        return NSFetchRequest<Recents>(entityName: "Recents")
    }

    @NSManaged public var recentlyChecked: String?

}
