//
//  XMLParsingViewController.swift
//  NavigationDrawer
//
//  Created by Vaibhav Wadhwa on 29/11/19.
//

import UIKit

class XMLParsingViewController: UIViewController,XMLParserDelegate,UITableViewDelegate,UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plantArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = plantArray[indexPath.row]
        return cell
    }
    

    var plantArray=[String]()
    var str:String?
    fileprivate  var saxParser:XMLParser?
    
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = "https://www.w3schools.com/xml/plant_catalog.xml"
        let url = URL(string: str)
        saxParser = XMLParser(contentsOf: url!)
        saxParser?.delegate = self
        saxParser?.parse()
        print(plantArray)
        TableView.delegate = self
        TableView.dataSource = self
        

        // Do any additional setup after loading the view.
}
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        str=String()
        
    }
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        str?.append(string)
        
    }
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        plantArray.append(str!)
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
