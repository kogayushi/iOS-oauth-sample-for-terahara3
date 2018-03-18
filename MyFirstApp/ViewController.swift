//
//  ViewController.swift
//  MyFirstApp
//
//  Created by kogayushi on 2018/03/17.
//  Copyright © 2018年 kogayushi. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    
    var session: SFAuthenticationSession? = nil
    
    @IBAction func changeLabel(_ sender: Any) {
        
        let url = URL(string: "http://localhost:8080/login")!
        self.session = SFAuthenticationSession(url: url, callbackURLScheme: "my-test-app") { url, error in
            var fragm = url?.fragment
            print(fragm!)
        }
        session?.start()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

