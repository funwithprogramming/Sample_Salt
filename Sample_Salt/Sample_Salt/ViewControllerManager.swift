//
//  ViewControllerManager.swift
//  Sample_Salt
//
//  Created by Alekh on 15/02/16.
//  Copyright © 2016 Alekh. All rights reserved.
//

import Foundation

class ViewControllerManager {
  
  //Initialized the Array from JSON
  ///
  ///Returns : Array of Data Model
  func getDataArrayFromJson(returnedArray:([ListObject]?)->() ) {
    
    //Creating empty data array
    var dataArray = [ListObject]()
    //Creating Session
    let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
    //Creating data Task
    let dataTask = session.dataTaskWithRequest(NSURLRequest(URL: NSURL(string:"https://gist.githubusercontent.com/maclir/f715d78b49c3b4b3b77f/raw/8854ab2fe4cbe2a5919cea97d71b714ae5a4838d/items.json")!)) { (data:NSData?, urlReponse:NSURLResponse?, error:NSError?) -> Void in
      if let _ = data {
        let dataInJson = JSON(data: data!)
        print(dataInJson)
        for (_,json) in dataInJson {
         let object = ListObject.getObjectFromJSON(json)
          if let _ = object {
            if (dataArray.count==30){
              //break
            }
            dataArray.append(object!)
          }
        }
      }
      
//      let  n = 50
//      let slice = dataArray[0..2]
      returnedArray(dataArray)
    }
    dataTask.resume()
    
  }
  
}
