//
//  ListTable.swift
//  Sample_Salt
//
//  Created by Alekh on 15/02/16.
//  Copyright © 2016 Alekh. All rights reserved.
//

import Foundation
import UIKit

class ListTable : NSObject, UITableViewDataSource, UITableViewDelegate {
  
  
  //Data Array
  var dataArray:[ListObject]?
  
  //MARK: Datasources and delegates
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("reuseListCell")
    let dataModel = dataArray?[indexPath.row]
    (cell as? ListViewCell)?.renderDataModel(model:dataModel)
    return cell!
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
    return dataArray?.count ?? 0
  }
  
}
