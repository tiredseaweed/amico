//
//  Numbers+CoreDataProperties.swift
//  
//
//  Created by Uditi Sharma on 3/8/20.
//
//

import Foundation
import CoreData


extension Numbers {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Numbers> {
        return NSFetchRequest<Numbers>(entityName: "Numbers")
    }

    @NSManaged public var numberInArray: Int16

}
