//
//  ListObject.swift
//  Sample_Salt
//
//  Created by Alekh on 15/02/16.
//  Copyright © 2016 Alekh. All rights reserved.
//

import Foundation

class ListObject {
  
  //Gives the url of Image
  var image       :String?
  //Gives the title associated of Image
  var title       :String?
  //Gives the description of Image
  var description :String?
  
  ///Function which creates datamodel from json
  ///parameters: modelJSon- Json for object
  ///returns: Model object
  class func getObjectFromJSON(modelJson:JSON)-> ListObject? {
    
    let listObject   =        ListObject()
    listObject.image =        modelJson["image"].string
    listObject.title =        modelJson["title"].string
    listObject.description =  modelJson["description"].string
    return listObject
  }
  
}
