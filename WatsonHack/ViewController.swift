//
//  ViewController.swift
//  WatsonHack
//
//  Created by Ankit Jasuja on 10/25/16.
//  Copyright © 2016 Ankit Jasuja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let watsonClient : WatsonClient = WatsonClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("inside view controller ... ")
        watsonClient.getSentiments("", targets: "") { (emotions : String?, error : NSError?) in
            print(emotions)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

