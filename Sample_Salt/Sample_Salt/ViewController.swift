//
//  ViewController.swift
//  Sample_Salt
//
//  Created by Alekh on 15/02/16.
//  Copyright © 2016 Alekh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  ///Outlets
  ///
  @IBOutlet weak var tableViewList: UITableView!
  @IBOutlet var tableViewDataSourceAndDelegate: ListTable!
  
  ///Manages VC
  let vcManager = ViewControllerManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    configureTableViewForAutolayout()
    
    ///Load data from Json
    ///
    vcManager.getDataArrayFromJson { [weak self](array:[ListObject]?) -> () in
      self?.tableViewDataSourceAndDelegate.dataArray = array
      dispatch_async(dispatch_get_main_queue(),{
          self?.tableViewList.reloadData()
      })
    }
  }
  
  ///Makes cell auto resizable
  ///b
  func configureTableViewForAutolayout() {
    tableViewList.rowHeight = UITableViewAutomaticDimension
    tableViewList.estimatedRowHeight = 160.0
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    let selIndexPath = tableViewList.indexPathForSelectedRow
    let model = self.tableViewDataSourceAndDelegate.dataArray![selIndexPath!.row]
    let destVC = segue.destinationViewController as? ItemDetailsViewController
    destVC?.dataModel = model
    
  }
  


  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

