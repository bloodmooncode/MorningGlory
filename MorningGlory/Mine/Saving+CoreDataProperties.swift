//
//  Saving+CoreDataProperties.swift
//  MineDynamic
//
//  Created by 张原溥 on 2021/10/25.
//
//

import Foundation
import CoreData


extension Saving {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Saving> {
        return NSFetchRequest<Saving>(entityName: "Saving")
    }

    @NSManaged public var username: String?
    @NSManaged public var imageD: Data?
    @NSManaged public var favourNum: Int64
    @NSManaged public var descriptions: String?
    @NSManaged public var resendNum: Int64
    @NSManaged public var reviewNum: Int64
    @NSManaged public var date: Date?
    @NSManaged public var favour: Bool
    @NSManaged public var resend: Bool
    @NSManaged public var review: Bool

}

extension Saving : Identifiable {

}
