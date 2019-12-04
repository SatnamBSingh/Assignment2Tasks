//
//  Cat.swift
//  RealmTask10
//
//  Created by Vaibhav Wadhwa on 03/12/19.
//  Copyright © 2019 Vaibhav Wadhwa. All rights reserved.
//

import Foundation
import RealmSwift

class Cat: Object {
    
   @objc dynamic var name : String?
     @objc dynamic var color : String?
     @objc dynamic var gender : String?
  //  @objc dynamic var id = 3
    
}
/*func primaryKey() -> String? {
    return "id"
}*/
