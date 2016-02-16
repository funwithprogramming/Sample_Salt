//
//  ViewController.swift
//  Sample_Salt
//
//  Created by Alekh on 15/02/16.
//  Copyright © 2016 Alekh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  //Outlets
  @IBOutlet weak var tableViewList: UITableView!
  @IBOutlet var tableViewDataSourceAndDelegate: ListTable!
  
  
  let vcManager = ViewControllerManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    configureTableViewForAutolayout()
    // Do any additional setup after loading the view, typically from a nib.
    vcManager.getDataArrayFromJson { [weak self](array:[ListObject]?) -> () in
      self?.tableViewDataSourceAndDelegate.dataArray = array
      dispatch_async(dispatch_get_main_queue(),{
          self?.tableViewList.reloadData()
      })
    }
  }
  
  //MAkes cell auto resizable
  func configureTableViewForAutolayout() {
    tableViewList.rowHeight = UITableViewAutomaticDimension
    tableViewList.estimatedRowHeight = 160.0
  }
  


  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

