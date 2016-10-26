//
//  WatsonClient.swift
//  WatsonHack
//
//  Created by Ankit Jasuja on 10/25/16.
//  Copyright © 2016 Ankit Jasuja. All rights reserved.
//

import UIKit
import Alamofire
import Foundation

class WatsonClient: NSObject {

    func getSentiments(url : String, targets : String, completion : (String?, NSError?) -> Void) {
        
        let request = NSMutableURLRequest(URL: NSURL(string: "https://gateway-a.watsonplatform.net/calls/url/URLGetTargetedEmotion?apikey=40ece87c957f1d88b5a229f1eb1ac1853e31e56d")!)
        request.HTTPMethod = "POST"
        let postData = NSMutableData(data: "outputMode=json".dataUsingEncoding(NSUTF8StringEncoding)!)
        postData.appendData("&targets=Clinton|Trump".dataUsingEncoding(NSUTF8StringEncoding)!)
        postData.appendData("&url=http://www.cnn.com".dataUsingEncoding(NSUTF8StringEncoding)!)

        request.HTTPBody = postData
        
        Alamofire.request(request).responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                print(responseData.result.value)
//                let responseDictionary = responseData.result.value as? NSDictionary
//                let resultDictionary = responseDictionary!["results"] as! [NSDictionary]
//                for result in resultDictionary {
//                    print(result["emotions"])
//                }
                completion("", nil)
            }
        }
    }
}
