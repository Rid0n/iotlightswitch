//
//  ViewController.swift
//  Lights
//
//  Created by Sergey on 26.02.2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

import UIKit
import WebKit
var on = true
class ViewController: UIViewController {

    @IBOutlet weak var yup: UIButton!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        yup.backgroundColor = UIColor(red: 104.0/255, green:187.0/255, blue: 83.0/255, alpha: 1.00)
        
    }

    @IBAction func onpressing(_ sender: UIButton) {
        if on {
            let request_URL = URL(string: "http://192.168.2.5/LED=OFF")
            let request = URLRequest(url: request_URL!)
            webView.load(request)
            on = false
            sender.setTitle("OFF", for: [])
            yup.backgroundColor = UIColor(red: 203.0/255, green: 44.0/255, blue: 44.0/255, alpha: 1.00)
        }
        else {
            let request_URL = URL(string: "http://192.168.2.5/LED=ON")
            let request = URLRequest(url: request_URL!)
            webView.load(request)
            on = true
            sender.setTitle("ON", for: [])
            yup.backgroundColor = UIColor(red: 104.0/255, green:187.0/255, blue: 83.0/255, alpha: 1.00)
        }
    }
}

