//
//  UD2ViewController.swift
//  NavigationDrawer
//
//  Created by Vaibhav Wadhwa on 04/12/19.
//

import UIKit

class UD2ViewController: UIViewController {

    @IBOutlet weak var FirstnameLB: UILabel!
    @IBOutlet weak var LastnameLB: UILabel!
    @IBOutlet weak var AgeLB: UILabel!
    @IBOutlet weak var CityLB: UILabel!
    @IBOutlet weak var MobilenmLB: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let fname = UserDefaults.standard.string(forKey: "fname"), let lname = UserDefaults.standard.string(forKey: "lname"), let age = UserDefaults.standard.string(forKey: "age"), let city = UserDefaults.standard.string(forKey: "city"), let no = UserDefaults.standard.string(forKey: "no")        {
            
            FirstnameLB.text = fname
            LastnameLB.text = lname
            AgeLB.text = age
            CityLB.text = city
            MobilenmLB.text = no
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
