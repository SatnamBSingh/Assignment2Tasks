//
//  WebVViewController.swift
//  NavigationDrawer
//
//  Created by Vaibhav Wadhwa on 04/12/19.
//

import UIKit
import WebKit
class WebVViewController: UIViewController,WKNavigationDelegate{

    
   // func reload(){}
    //func goBack(){}
    //func goForward(){}
    
    
    @IBOutlet weak var WebView: UIWebView!
    @IBAction func BackButton(_ sender: Any) {
        
    //self.WebView.goBack()
        if WebView.canGoBack{
            WebView.canGoBack
            
            
            let myURL:URL = URL(string:"https://www.google.com")!
            let myRequest:URLRequest = URLRequest(url: myURL)
            WebView.loadRequest(myRequest)
        }
        
        
    }
    
    @IBAction func ReloadButton(_ sender: Any) {
        //if WebView.reload(){
            WebView.reload()
        
        
    }
    
    @IBAction func Forwardbutton(_ sender: Any) {
        if WebView.canGoForward{
            WebView.goForward()
            
        }
        
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        //BackButton(true) = WebView.goBack()
        //Forwardbutton(true) = WebView.goForward()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      BackButton(true)
        Forwardbutton(true)
    
    
       // WebView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myURL:URL = URL(string:"https://www.google.com")!
        let myRequest:URLRequest = URLRequest(url: myURL)
        WebView.loadRequest(myRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
