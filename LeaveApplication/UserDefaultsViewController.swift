//
//  UserDefaultsViewController.swift
//  NavigationDrawer
//
//  Created by Vaibhav Wadhwa on 04/12/19.
//

import UIKit

class UserDefaultsViewController: UIViewController,UITextFieldDelegate{

    
    @IBOutlet weak var FirstnameTF: UITextField!
    @IBOutlet weak var LastnameTF: UITextField!
    @IBOutlet weak var AgeTF: UITextField!
    @IBOutlet weak var CityTF: UITextField!
    @IBOutlet weak var MobilenmTF: UITextField!
    
    
    
    @IBAction func SubmitButton(_ sender: Any) {
        
     UserDefaults.standard.set(FirstnameTF.text!, forKey: "fname")
    UserDefaults.standard.set(LastnameTF.text!, forKey: "lname")
        UserDefaults.standard.set(AgeTF.text!, forKey: "age")
       UserDefaults.standard.set(CityTF.text!, forKey: "city")
   UserDefaults.standard.set(MobilenmTF.text!, forKey: "no")
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
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
