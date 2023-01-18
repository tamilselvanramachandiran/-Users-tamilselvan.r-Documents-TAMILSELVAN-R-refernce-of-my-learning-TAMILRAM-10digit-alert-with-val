//
//  secondViewController.swift
//  10digit alert with value pass
//
//  Created by admin on 03/10/22.
//

import UIKit
import WebKit

class secondViewController: UIViewController {
    var recievedValue:String!
    var recivedgoogle:String!
    
//    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        let url = URL(string: "https://www.google.co.in/webhp?hl=en&sa=X&ved=0ahUKEwitt_ygrMv6AhXy-DgGHR8pCxcQPAgI")
        let requestobj = URLRequest(url:url!)
        webview.load(requestobj)
        
        
        
//        lbl1.text = recievedValue
        
        

        // Do any additional setup after loading the view.
    }
    
    

 

}
