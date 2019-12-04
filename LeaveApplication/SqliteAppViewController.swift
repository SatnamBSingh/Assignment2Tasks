//
//  SqliteAppViewController.swift
//  NavigationDrawer
//
//  Created by Vaibhav Wadhwa on 30/11/19.
//

import UIKit

class SqliteAppViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var iNameArray = [String]()
    var iRateArray = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = iNameArray[indexPath.row]
        cell.detailTextLabel?.text = iRateArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
       // cell?.textLabel?.text = itemname.text
        //cell?.detailTextLabel?.text = Price.text
        itemname.text = (cell?.textLabel?.text!)
        Price.text = (cell?.detailTextLabel?.text!)
    }
    
    
    @IBOutlet weak var itemname: UITextField!
    
    @IBOutlet weak var Price: UITextField!
    
    
    @IBAction func insertButton(_ sender: Any) {
        let insertQuery = "insert into Food(ItemName,ItemRate)values('\(itemname.text!)','\(Price.text!)')"
        
        let isSuccess = DBWrapper.sharedObj.executeQuery(query: insertQuery)
        if isSuccess
        {
            print("Insert:successful")
        }
        else
        {
            print("Insert:failed")
        }
        
    }
    

    @IBAction func UpdateButton(_ sender: Any) {
        
        let updateQuery = "update Food set ItemName = '\(itemname.text!)' where ItemRate = '\(Price.text!)'"
        let isSuccess = DBWrapper.sharedObj.executeQuery(query: updateQuery)
        if isSuccess == true {
            print("Update Successfully")
        }
        else
        {
            print("Failed to update")
        }
        
    }
    
    
    
    @IBAction func Delete(_ sender: Any) {
       
        let deleteQuery = "Delete from Food Where ItemName = '\(itemname.text!)'"
        let isSuccess = DBWrapper.sharedObj.executeQuery(query: deleteQuery)
        if isSuccess == true {
            print("Deleted")
        }
        else
        {
            print("Failed in deletion")
        }
    
    }
    
    
    
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let selectQuery = "select itemRate,itemName From Food"
        DBWrapper.sharedObj.selectALLTask(query: selectQuery)
        if DBWrapper.sharedObj.itemArray.count > 0
        {
            iNameArray = DBWrapper.sharedObj.itemArray
        }
        if DBWrapper.sharedObj.itemRate.count > 0
        {
            iRateArray = DBWrapper.sharedObj.itemRate
        }
        tableview.delegate = self
        tableview.dataSource = self
        
        
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
