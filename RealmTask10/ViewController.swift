//
//  ViewController.swift
//  RealmTask10
//
//  Created by Vaibhav Wadhwa on 03/12/19.
//  Copyright © 2019 Vaibhav Wadhwa. All rights reserved.
//

import UIKit
import RealmSwift
class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        
       // var mycat = Cat()
        
       /* mycat.name = "Thomas"
        mycat.color = "Black"
        mycat.gender = "Male"
          //mycat.catage = 3*/

        /*let cat = realm.objects(Cat.self).filter("name = Tom")
      try! realm.write {
        realm.create(Cat.self, value: ["name":"Thomas"])
        
        }*/
        
      let results = realm.objects(Cat.self).filter("name = 'Tom'")
      print(results.count)
        
        
        
        
        
        // Do any additional setup after loading the view.
    }


}

