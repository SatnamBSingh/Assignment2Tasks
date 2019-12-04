


import UIKit

class ViewController: UIViewController{
 
    

    @IBAction func Task1Button(_ sender: Any) {
        let mvcController  = self.storyboard?.instantiateViewController(withIdentifier: "MVCViewController")as! MVCViewController
        navigationController?.pushViewController(mvcController, animated: true)
        
    
        
    }
    
    
    @IBAction func Task2Button(_ sender: Any) {
        
        let hospitalVC = self.storyboard?.instantiateViewController(withIdentifier: "SqliteAppViewController") as! SqliteAppViewController
        navigationController?.pushViewController(hospitalVC, animated: true)
    }
    
    @IBAction func Task3(_ sender: Any) {
        let urdeflt = self.storyboard?.instantiateViewController(withIdentifier: "UserDefaultsViewController") as! UserDefaultsViewController
        navigationController?.pushViewController(urdeflt, animated: true)
        
        
    }
    
    
    @IBAction func Task4(_ sender: Any) {
        
        let Xmlprsing = self.storyboard?.instantiateViewController(withIdentifier: "XMLParsingViewController") as! XMLParsingViewController
        navigationController?.pushViewController(Xmlprsing, animated: true)
        
    }
    
    @IBAction func Task5Button(_ sender: Any) {
        let webVc = self.storyboard?.instantiateViewController(withIdentifier: "WebVViewController") as! WebVViewController
        navigationController?.pushViewController(webVc, animated: true)
       
    }
    
    
    
    @IBAction func Task6Button(_ sender: Any) {
        
       
    }
    
    
    @IBOutlet weak var leadingContraint: NSLayoutConstraint!
    @IBOutlet var ViewBackground: UIView!
    var showMenu = false;
    @IBAction func MenuBar(_ sender: UIBarButtonItem)
    {
        if(showMenu)
        {
            leadingContraint.constant = -240
            ViewBackground.backgroundColor = UIColor.white
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
        else
        {
            leadingContraint.constant = 0
            ViewBackground.backgroundColor = UIColor.darkGray
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
        showMenu = !showMenu
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}



}


