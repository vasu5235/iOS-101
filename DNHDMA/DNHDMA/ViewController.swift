//
//  ViewController.swift
//  DNHDMA
//
//  Created by Vasu Mistry on 12/12/17.
//  Copyright © 2017 Vasu Mistry. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var URLLoad: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let url:URL = URL(string: "http://dnhdmc.in/public/data_display")!
        let urlRequest:URLRequest = URLRequest(url: url)
        URLLoad.load(urlRequest)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
